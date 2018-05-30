class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :main_title
      t.string :sub_title
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
