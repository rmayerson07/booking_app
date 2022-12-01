class ChangeSchema < ActiveRecord::Migration[7.0]
  def change
    change_column_default :booking_types, :color, "#000000"
    change_column_null :booking_types, :user_id, false
    change_column_default :bookings, :status, 0    
  end
end
