class JungleBeat
  attr_reader :list, :all
  attr_accessor :rate, :voice
  def initialize(data = nil)
    @list = LinkedList.new
    @rate = 500
    @voice = "Boing"
    if data != nil
      append(data)
    end
  end

  def append(new_data)
    new_data = new_data.split
    new_string =  []
    valid_beats = ["tee", "dee", "deep", "scoopity", "boopity", "doopity", "bop", "woo", "hoo", "shu", "boop", "la", "dop", "doo", "ditt", "na"]
    new_string = new_data.select do |data|
      valid_beats.any? do |beat|
        beat == data
      end
    end
    new_string.each do |data|
      @list.append(data)
    end
    new_string.join(" ")
  end

  def prepend(new_data)
    new_data = new_data.split
    new_string =  []
    valid_beats = ["tee", "dee", "deep", "scoopity", "boopity", "doopity", "bop", "woo", "hoo", "shu", "boop", "la", "dop", "doo", "ditt", "na"]
    new_string = new_data.select do |data|
      valid_beats.any? do |beat|
        beat == data
      end
    end
    new_string.each do |data|
      @list.prepend(data)
    end
    new_string.join(" ")
  end

  def count
    list.count
  end

  def play
    `say -r #{@rate} -v #{@voice} #{@list.to_string}`
  end

  def all
    @list.to_string
  end

  def rate(num)
    @rate = num
  end

  def reset_rate
    @rate = 500
  end

  def voice(name_of_voice)
    @voice = name_of_voice
  end

  def reset_voice
    @voice = "Boing"
  end
end