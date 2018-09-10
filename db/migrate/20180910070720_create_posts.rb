class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.sting :title
      t.Int :rating

      t.timestamps
    end
  end
end
