class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :county
      t.string :type
      t.string :owner
      t.string :emergency_services
      t.string :location

      t.timestamps
    end
  end
end
