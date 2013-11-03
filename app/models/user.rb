class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :appointments
  has_many :skills, :through => :appointments

  def proficiency_for(skill)
    # p self.appointments#[0].proficiency
    # p self.skills.find_by_name("Beard Growing")#[0].proficiency
    # p self.skills
    p self.appointments#.find_by_skill_id(19)
    p self.appointments.find_by_skill_id(19)
    # p Skill.all
    # p Skill.find_by_name("Beard Growing")
  end

  def set_proficiency_for(skill, proficiency)
    # p self.appointments.find_by_skill(skill)
  end
end
