class Score < ApplicationRecord
  belongs_to :user

  def user_name
    # byebug
    self.user.name
  end

  def rank
    index = Score.sorted_scores.find_index (self)
    index + 1
  end

  def self.sorted_scores
    Score.all.sort_by{|s| -s.points}
  end

end
