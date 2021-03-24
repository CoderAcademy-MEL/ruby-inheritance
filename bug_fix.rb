require_relative './task'

class BugFix < Task
  attr_accessor :location, :priority

  def initialize(name, location, priority, description = 'Problem')
    @location = location
    @priority = priority
    super(name, description)
  end
  
  def to_s
    start = super
    # puts start
    "#{start}, priority: #{priority}"
    # "#{id}: #{name}, priority #{priority}"
  end
end
# test = BugFix.new('name','bugfix.rb', 'critical', 'This is important')
# puts test.to_s