class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(new_data)
    new_data = new_data.split
    new_string=  []
    new_data.each do |data|
    new_string  << list.append(data)
    new_string.join(" ")
    end
    new_string.join(" ")
  end

  def count
    list.count
  end
end