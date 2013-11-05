class Skill < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, :uniqueness => true
  has_many :appointments
  has_many :users, :through => :appointments

  def user_with_proficiency(proficiency)
    
  end
  
end
