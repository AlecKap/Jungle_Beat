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
    if @head == nil
      count = 0
    elsif
      until @head.next_node == nil
        count +=1
      end
    end
    count
  end

end