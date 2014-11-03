class Horse < ActiveRecord::Base

  belongs_to :sweep


  def self.find_random_horse(sp)
    if Horse.where(assigned: false).where(sweep_id: sp).count > 0
      Horse.where(assigned: false).where(sweep_id: sp).order("RANDOM()").first
    else
      nil
    end

  end

  def self.horse_count(sweep)
    Horse.where(assigned: true).where(sweep: sweep).count
    end

  def self.horses_left(sweep)
    Horse.where(sweep: @sweep).count - Horse.where(assigned: true).where(sweep: sweep).count
  end


end
