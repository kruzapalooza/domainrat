class CreateRegistrars < ActiveRecord::Migration
  def change
    create_table :registrars do |t|
		t.timestamps
		t.integer :iana_id
		t.string  :name
		t.string  :registrar_name
		t.string  :whois_server
		t.string  :abuse_email
		t.string  :abuse_phone
    end
  end
end
