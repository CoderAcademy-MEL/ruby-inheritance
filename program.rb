require_relative './bug_fix'
require_relative './feature_request'

feature = FeatureRequest.new('new content', 'class', 'easy')
bug = BugFix.new('problem', 'aaa', 'aaa')

puts feature.to_s

puts bug