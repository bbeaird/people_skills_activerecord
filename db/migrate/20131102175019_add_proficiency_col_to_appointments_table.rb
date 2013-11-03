class AddProficiencyColToAppointmentsTable < ActiveRecord::Migration
  def change
    add_column :appointments, :proficiency, :integer 
  end
end
