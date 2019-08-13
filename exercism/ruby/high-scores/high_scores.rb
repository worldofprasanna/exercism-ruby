# HighScore
class HighScores
  attr_reader :scores

  def initialize(arr)
    @scores = arr
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top
    @scores.sort.reverse[0..2]
  end

  def report
    l_score = "Your latest score was #{latest}. "
    b_score = if latest == personal_best
                "That's your personal best!"
              else
                "That's #{personal_best - latest} short of your personal best!"
              end
    l_score + b_score
  end
end
