class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :image_path
      t.boolean :active, default: true

      t.timestamps null: false
    end
  end
end
