=begin
  Class name: PhrasesController
  @Author: Carlos Ricardo Mora Sanchez
  @description: Controller for the Phrases objects
=end

class PhrasesController < ApplicationController
  # Load the phrase for the  :show, :edit, :update, :destroy methods
  before_action :set_phrase, only: [:show, :edit, :update, :destroy]
  # Each time that a user visit a phrase path this callback is executed to increase the visits
  before_action :new_visit, only: :show

  # GET /phrases
  # GET /phrases.json
  def index
    @phrases = Phrase.all.includes(:person) # Using includes avoid n+1 problem
  end

  # GET /phrases/raitings
  # GET /phrases/raitings.json
  def raitings
    @visits = Phrase.visits_raiting
    @votes = Phrase.votes_raiting
  end

  # GET /phrases/1
  # GET /phrases/1.json
  def show
  end

  # PATCH/PUT /phrases/1/vote
  def vote
    @phrase = Phrase.find(params[:phrase_id])
    @phrase.add_vote # Add a new vote to the selected phrase
    respond_to do |format|
      format.js
    end
  end

  # GET /phrases/new
  def new
    @phrase = Phrase.new
  end

  # GET /phrases/1/edit
  def edit
  end

  # POST /phrases
  # POST /phrases.json
  def create
    @phrase = Phrase.new(phrase_params)
    respond_to do |format|
      if @phrase.save
        format.html { redirect_to @phrase, notice: 'Phrase was successfully created.' }
        format.json { render :show, status: :created, location: @phrase }
      else
        format.html { render :new }
        format.json { render json: @phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phrases/1
  # PATCH/PUT /phrases/1.json
  def update
    respond_to do |format|
      if @phrase.update(phrase_params)
        format.html { redirect_to @phrase, notice: 'Phrase was successfully updated.' }
        format.json { render :show, status: :ok, location: @phrase }
      else
        format.html { render :edit }
        format.json { render json: @phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phrases/1
  # DELETE /phrases/1.json
  def destroy
    @phrase.destroy
    respond_to do |format|
      format.html { redirect_to phrases_url, notice: 'Phrase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phrase
      @phrase = Phrase.find(params[:id])
    end

    # Use callbacks to add a visit and increment the counter
     def new_visit
       @phrase.add_visit
     end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phrase_params
      params.require(:phrase).permit(:title, :content, :person_id)
    end
end
