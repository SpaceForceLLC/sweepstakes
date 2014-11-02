class CreateHorses < ActiveRecord::Migration
  def change
    create_table :horses do |t|
      t.string :hname
      t.string :trainer
      t.integer :odds
      t.boolean :assigned
      t.string :bname

      t.timestamps
    end
  end
end
