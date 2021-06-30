class CreateForms < ActiveRecord::Migration[6.0]
  def change
    create_table :forms do |t|
      t.string :day,       null: false
      t.string :time,      null: false
      t.text :good,        null: false
      t.text :bad,         null: false
      t.text :improvement, null: false
      t.references :user,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
