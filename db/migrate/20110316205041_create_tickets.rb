class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
	  t.string :name
	  t.string :body
	  t.integer :category_id
      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
