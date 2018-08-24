=begin
  Class name: Person
  @Author: Carlos Ricardo Mora Sanchez
  @description: Manage the business logic of the people
=end

class Person < ApplicationRecord
  has_many :phrases, dependent: :destroy # ActiveRecord relation with phrases
  accepts_nested_attributes_for :phrases, allow_destroy: true # Nested the person model with the phrases model
  validates_presence_of :first_name, :last_name # Validate presence for attributes

=begin
 Gets the first and last name of a person.
 @return the Person's full name.
=end
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
