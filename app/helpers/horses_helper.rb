module HorsesHelper

  def horses_available?
    Horse.where(assigned: false)
  end

  def horses_taken?
    Horse.where(assigned: true)
  end

  def backed?(horse)
    if horse.assigned
      "info"
    end
  end


end
