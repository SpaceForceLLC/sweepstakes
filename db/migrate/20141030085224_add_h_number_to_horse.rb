class AddHNumberToHorse < ActiveRecord::Migration
  def change
    add_column :horses, :hnumber, :integer
  end
end
