class CreateForums < ActiveRecord::Migration[6.0]
  def change
    create_table :forums do |t|
      t.string :pseudo
      t.integer :age
      t.text :commentaire
      t.datetime :date_of_publication

      t.timestamps
    end
  end
end
