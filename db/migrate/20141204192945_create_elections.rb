class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.string :name, null: false
      t.date :occurs_on, null: false
      t.date :published_on, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
