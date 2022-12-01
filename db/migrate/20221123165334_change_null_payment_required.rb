class ChangeNullPaymentRequired < ActiveRecord::Migration[7.0]
  def change
    change_column_null :booking_types, :payment_required, false
  end
end
