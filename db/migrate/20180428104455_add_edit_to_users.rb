class AddEditToUsers < ActiveRecord::Migration
  def change
    add_column :users, :position, :string
    add_column :users, :s_introduction, :text
  end
end
