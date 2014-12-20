
class CreateTables < ActiveRecord::Migration
	def change 
		create_table :contacts do |t|
			t.timestamps
			t.serial :id
			t.string :name
			t.string :org
			t.string :street
			t.string :city
			t.string :state
			t.string :zip
			t.string :email
			self.primary_key = 'id'
		end
		
		create_table  :domains do |t|
			t.timestamps
			t.integer :iana_id
			t.string  :expire_date
			t.string  :domain_name 
			self.primary_key = 'iana_id'
		end

		create_table  :nameservers do |t|
			t.timestamps
			t.integer :id
			t.string  :name
			self.primary_key = 'id'
		end

		create_table  :registrars do |t|
			t.timestamps
			t.integer :iana_id
			t.string  :name
			t.string  :registrar_name
			t.string  :whois_server
			t.string  :abuse_email
			t.string  :abuse_phone
			self.primary_key = 'iana_id'
		end

		create_table :domains_nameservers, id: false do |x|
			x.belongs_to :domain
			x.belongs_to :nameserver 
		end

		create_table :contacts_domains, id: false do |x|
			x.belongs_to :contact
			x.belongs_to :domain
		end

		create_table :domains_registrars, id: false do |x|
			x.belongs_to :contact
			x.belongs_to :registrar
		end
	end	
end

class Domain < ActiveRecord::Base
	has_and_belongs_to_many :contacts
	has_and_belongs_to_many :nameservers
	has_and_belongs_to_many :registrars

end

class Contact < ActiveRecord::Base
	self.primary_key = 'id'
	has_and_belongs_to_many :domains
end

class Nameserver < ActiveRecord::Base

	has_and_belongs_to_many :domains
end

class Registrar < ActiveRecord::Base
	has_and_belongs_to_many :domains
end