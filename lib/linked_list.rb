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
end