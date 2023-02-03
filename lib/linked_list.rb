class LinkedList
  attr_reader :head, :count, :to_string
  def initialize
    @head = nil
  end

  def append(new_data)
    # new_node = Node.new(data, nil)
    if @head == nil    ## Implies list is empty
      @head = Node.new(new_data, nil)
    else
      current_node = @head
      while (current_node.next_node != nil)
        current_node = current_node.next_node
      end
      # end of the list
      current_node.next_node = Node.new(new_data, nil)
    end
    new_data
  end

  def count
    count = 1
    if @head == nil
      count = 0
    elsif @head.next_node == nil
      count = 1
    elsif 
      current_node = @head
      while (current_node.next_node != nil)
        current_node = current_node.next_node
        count += 1
      end
    end
    count
  end
  
  def to_string
    string = [head.data] #sets string variable
    if @head == nil # If list is empty, then print empty string.
      string = nil
    elsif @head.next_node == nil # .next_node implies list is not empty, but the nil in this case implies it only has one node element.  
      string.join  #print array as a string that contains the the head node data value. 
    elsif 
      current_node = @head
      while (current_node.next_node != nil)
        current_node = current_node.next_node
        string << current_node.data
      end
    end
    string.join(" ") #print array as a string that contains all the data stored in list.
  end
end