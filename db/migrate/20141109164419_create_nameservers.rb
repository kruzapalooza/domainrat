class CreateNameservers < ActiveRecord::Migration
  def change
    create_table :nameservers do |t|

      t.timestamps
    end
  end
end
