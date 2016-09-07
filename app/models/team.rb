class Team < ActiveRecord::Base
  validates_uniqueness_of :api_id

  has_many :players

  def full_name
    "#{self.market} #{self.name}"
  end

end

