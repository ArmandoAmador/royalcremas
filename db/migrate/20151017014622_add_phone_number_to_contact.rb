class AddPhoneNumberToContact < ActiveRecord::Migration
  def change
    add_column :contact_requests, :phone, :string
  end
end
