class AddSweepIdToHorses < ActiveRecord::Migration
  def change
    add_reference :horses, :sweep, index: true
  end
end
