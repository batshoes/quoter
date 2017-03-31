class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email_address
      t.string :contact_number
      t.string :number_after_hours
      t.string :occupation
      t.string :experience

      t.string :insured_name
      t.string :trading_name
      t.string :subsidiaries
      t.string :abn
      t.string :website
      
      t.string :address_line_1
      t.string :address_line_2
      t.string :state
      t.string :country
      t.string :post_code

      t.string :advice_type
      t.string :source
      t.string :current_insurer
      t.string :current_broker
      t.string :interested_parties
      t.string :expiry_date

      t.timestamps

    end
  end
end
