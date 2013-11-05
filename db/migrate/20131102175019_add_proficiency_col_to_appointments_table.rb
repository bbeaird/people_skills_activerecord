class AddProficiencyColToAppointmentsTable < ActiveRecord::Migration
  def change
    add_column :appointments, :proficiency, :integer, default: 0
  end
end
