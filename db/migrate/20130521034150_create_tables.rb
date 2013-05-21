class CreateTables < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :first_name, :default => "Anonymous"
      t.string :last_name
      t.boolean :is_author, :default => false
      t.string :email

      t.timestamps
    end

    create_table :blogs do |t|
      t.string :title, :null => false
      t.text :body, :null => false
      t.integer :category_id
      t.integer :author_id

      t.timestamps
    end

    create_table :comments do |t|
      t.integer :blog_id, :null => false
      t.integer :user_id
      t.text :body, :null => false

      t.timestamps
    end

    create_table :categories do |t|
      t.string :category
    end
  end

  def down
    drop_table :users
    drop_table :blogs
    drop_table :comments
    drop_table :categories
  end
end
