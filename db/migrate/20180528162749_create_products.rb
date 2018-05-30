class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :main_title
      t.string :sub_title
      t.string :image
      t.string :price
      t.string :description

      t.timestamps
    end
  end
end
