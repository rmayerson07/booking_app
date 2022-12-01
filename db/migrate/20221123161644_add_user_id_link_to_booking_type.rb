class AddUserIdLinkToBookingType < ActiveRecord::Migration[7.0]
  def change
    add_reference :booking_types, :user, foreign_key:true
     # add_column :booking_types, :user, foreign_key:true
      #add_foreign_key :booking_types, :users
  end
end
