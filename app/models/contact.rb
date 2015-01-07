class Contact < ActiveRecord::Base
	scope :sorted, lambda { order("contacts.id ASC") }
end
