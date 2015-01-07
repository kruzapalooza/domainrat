class CreateNameservers < ActiveRecord::Migration
  def change
    create_table :nameservers do |t|
      	t.timestamps
		t.string  :name
    end
  end
end
