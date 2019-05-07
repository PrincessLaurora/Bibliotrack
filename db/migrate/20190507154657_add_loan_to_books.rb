class AddLoanToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :receiver, :string
    add_column :books, :date, :string
  end
end
