class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :appointments
  has_many :skills, :through => :appointments

  def proficiency_for(skill)
    # p self.appointments#[0].proficiency
    # p self.skills.find_by_name("Beard Growing")#[0].proficiency
    # p self.skills
    # p user = self
    # self.skill

    # if self.appointments[0].proficiency.nil?
    #   self.appointments[0].proficiency = 0
    # end

    # p self.appointments.find_by_skill_id(19)
    # p Skill.all
    # p Skill.find_by_name("Beard Growing")
    p self.appointments
    p skill_id = self.skills.find_by_name(skill.name).id#.find_by_name(skill)
    p self.appointments.find_by_skill_id(skill_id).proficiency
  end

  def set_proficiency_for(skill, proficiency)
    # p self.appointments.find_by_skill(skill)
  end
end
