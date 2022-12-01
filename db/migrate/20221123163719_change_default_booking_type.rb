class ChangeDefaultBookingType < ActiveRecord::Migration[7.0]
  def change
    change_column_default :booking_types, :payment_required, false
  end
end
