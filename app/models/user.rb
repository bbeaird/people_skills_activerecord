class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :appointments
  has_many :skills, :through => :appointments

  def proficiency_for(skill)
    # self.appointments
    skill_id = self.skills.find_by_name(skill.name).id
    self.appointments.find_by_skill_id(skill_id).proficiency
  end

  def set_proficiency_for(skill, proficiency)
    # p "Users *****"*5
    # p User.all
    # p "Skills *****"*5
    # p Skill.all
    # p "Appointments *****"*5
    # p Appointment.all
    user_id = self.id
    skill_id = self.skills.find_by_name(skill.name).id
    @user_skill_entry = Appointment.find_by_user_id_and_skill_id(user_id, skill_id)
    # p '*'*80
    # p @user_skill_entry.update_attribute(:proficiency, proficiency)
    @user_skill_entry.proficiency = proficiency
    @user_skill_entry.save
    @user_skill_entry

    # p @asdf = self.appointments.find_by_skill_id(skill_id)
    # p @asdf.proficiency = proficiency
    # @asdf.save
    # p @asdf = self.appointments.find_by_skill_id(skill_id)
    # p self.appointments.find_by_skill_id(skill_id).proficiency
    # p Appointment.all
    # p User.all


    # @asdf.find_by_skill_id(skill_id).proficiency = proficiency
    # p @asdf = proficiency
    # @asdf.save
    # p self.appointments.find_by_skill_id(skill_id).proficiency
    # p @asdf
    # p self.appointments.find_by_skill(skill)
    Skill.find_by_name("Beard Growing")#.user_with_proficiency(900)
    Appointment.all

  end
end
