class AddFieldsToBallers < ActiveRecord::Migration
  def change
    add_column :ballers, :admin, :boolean
    add_column :ballers, :first_name, :string
    add_column :ballers, :last_name, :string
  end
end
