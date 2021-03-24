#Superclass
class Task
  @id = 0
  @object_count = 0

  def self.next_id 
    @id += 1
    return @id
  end

  def self.object_count=(value)
    @object_count = value
  end
  def self.object_count
    @object_count
  end

  attr_accessor :id, :name, :description

  def initialize(name, description = '')
    Task.object_count=(1)
    @id = Task.next_id
    @name = name
    @description = description
  end

  def to_s
    p self
    "id no# #{id}: #{name}"
  end
end
puts 'task loaded'
