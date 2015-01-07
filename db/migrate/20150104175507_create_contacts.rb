class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
		t.timestamps
		t.string :name
		t.string :org
		t.string :street
		t.string :city
		t.string :state
		t.string :zip
		t.string :email
    end
  end
end
