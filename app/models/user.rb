class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :appointments
  has_many :skills, :through => :appointments

  def proficiency_for(skill)
    p self.appointments
    p skill_id = self.skills.find_by_name(skill.name).id
    p self.appointments.find_by_skill_id(skill_id).proficiency
  end

  def set_proficiency_for(skill, proficiency)
    # p self.appointments.find_by_skill(skill)
  end
end
