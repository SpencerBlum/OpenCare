class CreateBusinessAttributes < ActiveRecord::Migration[6.0]
  def change
    create_table :business_attributes do |t|
      t.belongs_to :business, null: false, foreign_key: true
      t.boolean :all_day, default: false
      t.boolean :sleep_away, default: false
      t.boolean :swimming, default: false
      t.boolean :climbing, default: false
      t.boolean :archery, default: false
      t.boolean :arts_crafts, default: false
      t.boolean :jewish, default: false
      t.boolean :christian, default: false
      t.boolean :muslim, default: false

      t.timestamps
    end
  end
end
