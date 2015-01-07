class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
		t.timestamps
		t.integer :iana_id
		t.string  :expire_date
		t.string  :domain_name 
    end
  end
end
