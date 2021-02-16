class CreateWatcheds < ActiveRecord::Migration[6.0]
  def change
    create_table :watcheds do |t|
      t.string :Poster
      t.string :Title
      t.string :Type
      t.string :Year
      t.string :imdbID
      t.boolean :liked

      t.timestamps
    end
  end
end
