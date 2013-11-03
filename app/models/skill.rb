class Skill < ActiveRecord::Base
  # Remember to create a migration!
  has_many :appointments
  has_many :users, :through => :appointments
end
