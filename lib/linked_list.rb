class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(new_data)
    if @head == nil
      @head = Node.new(new_data, nil)
    else
      last_node = @head
      while (last_node.next_node != nil)
        last_node = last_node.next_node
      end
      # We are at the end of the list
      last_node.next_node = Node.new(new_data, nil)
    end
    new_data
  end

  def count
    count = 1
    if @head == nil
      count = 0
    elsif @head.next_node == nil
      count = 1
    elsif @head.next_node != nil
      count = count +=1
    end
  end
  # count = 1
  # until @head.next_node == nil
  #   if @head == nil
  #     count = 0
  #   elsif @head != nil
  #     count +=1
  #   end
  # end

  def to_string
    head.data
  end
end