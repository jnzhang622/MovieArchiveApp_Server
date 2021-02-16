class CreateBacklists < ActiveRecord::Migration[6.0]
  def change
    create_table :backlists do |t|
      t.string :Poster
      t.string :Title
      t.string :Type
      t.string :Year
      t.string :imdbID

      t.timestamps
    end
  end
end
