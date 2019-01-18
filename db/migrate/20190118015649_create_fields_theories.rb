class CreateFieldsTheories < ActiveRecord::Migration[5.2]
  def change
    create_table :fields_theories, :id => false do |t|
      t.integer :field_id
      t.integer :theory_id
    end
  end
end
