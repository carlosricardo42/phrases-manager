module PhrasesHelper

=begin
this method set the string to  shared the number of visists
@return string with total of visits
=end
  def info(phrase)
    "total visits: #{phrase.visits}."
  end
end
