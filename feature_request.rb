require_relative 'task'

class FeatureRequest < Task
  attr_accessor :content, :difficulty

  def initialize(name, content, difficulty, description = '')
    @content = content
    @difficulty = difficulty
    super(name, description)
  end

  def to_s
    "#{super}, content: #{content}"
  end
end

# feature = FeatureRequest.new(
#   'feature Req',
#   'new class',
#   'impossible',
#   'will improve the code quality'
# )

# feature2 = FeatureRequest.new(
#   'feature no two',
#   'another class',
#   'impossible',
#   'will improve the code quality'
# )
# puts feature.to_s
# puts feature2.to_s