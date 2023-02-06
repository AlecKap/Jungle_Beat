class JungleBeat
  attr_reader :list
  attr_accessor :rate
  def initialize()
    @list = LinkedList.new
    @rate = 500
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

  def play
    `say -r #{@rate} -v Boing #{@list.to_string}`
  end

  def rate(num)
    @rate = num
  end
end