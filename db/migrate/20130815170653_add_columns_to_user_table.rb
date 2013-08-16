class AddColumnsToUserTable < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.string :first_name
  		t.string :last_name
  		t.string :company_name
  		t.string :address_first
  		t.string :address_second
  		t.string :address_city
		t.string :address_state
  		t.string :postal_code
  		t.string :phone_office
  		t.string :phone_mobile
  		t.string :phone_fax
  		t.string :website_url
	end
  end
end
