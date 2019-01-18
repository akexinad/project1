class CreateTheories < ActiveRecord::Migration[5.2]
  def change
    create_table :theories do |t|
      t.text :name
      t.integer :thinker_id

      t.timestamps
    end
  end
end
