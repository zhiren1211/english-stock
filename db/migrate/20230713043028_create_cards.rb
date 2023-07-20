class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards, id: :uuid do |t|
      t.string :name, null: false
      t.text :comment, null: false, default: ""
      t.timestamps
    end
  end
end
