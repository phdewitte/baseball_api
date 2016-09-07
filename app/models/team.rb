class Team < ActiveRecord::Base
  validates_uniqueness_of :api_id

  has_many :players

  def full_name
    "#{self.market} #{self.name}"
  end

  def roster
    Player.where(team_id: self.api_id)
  end

end

