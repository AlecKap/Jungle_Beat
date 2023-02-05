class LinkedList
  attr_reader :head, :count, :to_string
  def initialize
    @head = nil
  end

  def append(new_data)
    # new_node = Node.new(data, nil)
    if @head == nil    ## Implies list is empty
      @head = Node.new(new_data, nil) #new node element to add to the list.
    else
      current_node = @head 
      while (current_node.next_node != nil) #if the node we are looking at contains nil value, it is the last node in the list.
        current_node = current_node.next_node  #reassign current_node to the value of next_node, which is a either yet another node, or nil. 
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
        string << current_node.data #shovle this data value into the string array
      end
    end
    string.join(" ") #print array as a string that contains all the data stored in list.
  end

  def prepend(new_data)
    if @head == nil
      @head = Node.new(new_data, nil) #if list empty, make new node instance; set as head.
    else #if not empty
      current_head = Node.new(new_data, nil)
      current_head.next_node = @head
      @head = current_head
    end
  end

  def insert(index, new_data)
   current_node = @head
   (index - 1).times do
    current_node = current_node.next_node
   end
   new_node = Node.new(new_data, nil)
   new_node.next_node = current_node.next_node
   current_node.next_node = new_node
   new_data
  end

  def find(index, num_of_nodes)
    current_node = @head
    data = []
    index.times do
      current_node = current_node.next_node
    end
    num_of_nodes.times do
      data << current_node.data
      current_node.next_node
    end
    data.join(" ")
  end

  def includes?(data)
    current_node = @head
    while current_node.next_node != nil #IOW while the list is not empty
      if (current_node.data == data)
        return true 
      end
      current_node = current_node.next_node
    end
    false
  end

  def pop
    
    current_node = @head
    while current_node.next_node.next_node != nil
      current_node = current_node.next_node
    end
    last_node = current_node.next_node
    current_node.next_node = nil
    last_node.data
  end
end