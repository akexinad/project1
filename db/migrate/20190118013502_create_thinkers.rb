class CreateThinkers < ActiveRecord::Migration[5.2]
  def change
    create_table :thinkers do |t|
      t.text :name
      t.date :birth
      t.date :death
      t.text :nationality
      t.text :era
      t.text :image
      t.text :quote
      t.integer :user_id

      t.timestamps
    end
  end
end
