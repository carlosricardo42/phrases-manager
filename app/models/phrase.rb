=begin
  Class name: Phrase
  @Author: Carlos Ricardo Mora Sanchez
  @description: Manage the business of the phrases
=end

class Phrase < ApplicationRecord
  belongs_to :person # ActiveRecord relation with person
  validates_presence_of :title, :content # Validate presence for attributes

  # Query to get the top 10 of visits
  scope :visits_raiting, -> { order('visits DESC').includes(:person).limit(10)}
  # Query to get the top 10 of votes
  scope :votes_raiting, -> { order('votes DESC').includes(:person).limit(10)}

=begin
 This method increment the votes counter by one  of a phrase
 @return
=end
  def add_vote
    self.increment!(:votes, 1)
  end

=begin
 This method decrease the votes counter by one  of a phrase
 @return
=end
  def quit_vote
    self.decrement!(:votes, 1)
  end

=begin
 This method increment the visits counter by one  of a phrases
 @return
=end
  def add_visit
    self.increment!(:visits, 1)
  end

=begin
 This method decrease the votes counter by one  of a phrases
 @return
=end
  def quit_visit
    self.decrement!(:visits, 1)
  end
end
