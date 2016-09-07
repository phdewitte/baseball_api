class Player < ActiveRecord::Base

  belongs_to :team

# Leage standing api call required for below
# @hits
# @homeruns
# @rbi
# @avg
# @obp
# @ops
# @win_loss
# @era
# @strikeouts


  def age
    # do some age calculations w/ datetime
  end

end