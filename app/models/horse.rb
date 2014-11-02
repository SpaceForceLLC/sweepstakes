class Horse < ActiveRecord::Base

  def self.find_random_horse
    if Horse.where(assigned: false).count > 0
      Horse.where(assigned: false).order("RANDOM()").first
    else
      nil
    end

  end

  def self.horse_count
    Horse.where(assigned: true).count
    end

  def self.horses_left
    Horse.all.count - Horse.where(assigned: true).count
  end


end
