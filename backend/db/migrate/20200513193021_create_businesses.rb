class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :img_url
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.boolean :is_approved
      t.string :bio
      t.integer :review_count, default: 0
      t.string :longitude, default: nil
      t.string :latitiude, default: nil

      t.timestamps
    end
  end
end
