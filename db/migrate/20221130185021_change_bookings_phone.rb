class ChangeBookingsPhone < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :phone, :string
    add_column :bookings, :phone_type, :integer  
  end
end
