class CreateSweeps < ActiveRecord::Migration
  def change
    create_table :sweeps do |t|
      t.integer :value

      t.timestamps
    end
  end
end
