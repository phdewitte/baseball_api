class Player < ActiveRecord::Base

  belongs_to :team
  has_many :statistics

  def age
    # do some age calculations w/ datetime
  end

end