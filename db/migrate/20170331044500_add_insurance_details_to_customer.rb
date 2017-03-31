class AddInsuranceDetailsToCustomer < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :refused_policy, :boolean, default: false
    add_column :customers, :refused_claim, :boolean, default: false
    add_column :customers, :impose_special_conditions, :boolean, default: false
    add_column :customers, :convicted_or_bankrupt, :boolean, default: false
    add_column :customers, :five_year_claims, :boolean, default: false

    add_column :customers, :property_situation, :text
  end
end
