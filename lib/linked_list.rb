class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(new_data)
    if @head.nil?
      @head = Node.new(new_data)
    end
    new_data
  end

  def count
    count = 1
    until @head.next_node == nil
      if @head == nil
        count = 0
      elsif @head != nil
        count +=1
      end
    end
    count
  end

  def to_string
    head.data
  end

end