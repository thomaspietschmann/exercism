class HighScores
  attr_reader :scores, :top_three

  def initialize(scores)
    @scores = scores
    @top_three = scores.max(3)
  end

  def latest
    scores.last
  end

  def personal_best
    top_three.max
  end

  def personal_top_three
    top_three
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end
