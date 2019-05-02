class Books < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :author
      t.text :title
    end
  end  
end
