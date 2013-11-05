class Skill < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, :uniqueness => true
  has_many :appointments
  has_many :users, :through => :appointments

  def user_with_proficiency(proficiency)
  	@user = Appointment.find_by_proficiency(proficiency)  
  	@user_id = @user.user_id
  	User.find(@user_id)
  end

end
