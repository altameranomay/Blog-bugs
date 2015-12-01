class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    #  t.string :firstname
     # t.string :lastname
      #t.string :gender
      #t.varchar :email
      #t.text :content
      t.string :name
      t.text :context
      t.timestamps null: false
    end
  end
end

