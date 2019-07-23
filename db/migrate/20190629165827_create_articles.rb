class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :abv_title
      t.string :paragraph1
      t.string :paragraph2
      t.string :paragraph3
      t.string :paragraph4

      t.timestamps
    end
  end
end
