require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe 'LinkedList' do
  describe 'exists' do
    it 'to be an instance of' do
      list = LinkedList.new

      expect(list).to be_instance_of(LinkedList)
    end

    it 'has head' do
      list = LinkedList.new
      list.head

      expect(list.head).to eq(nil)
    end
  end

  describe 'can have one node/element added' do
    it 'accepts new nodes' do
      list = LinkedList.new
      list.append("doop")

      expect(list.append("doop")).to eq("doop")
    end

    it 'adds new_data to list' do
      list = LinkedList.new
      list.append("doop")
      
      expect(list.head.data).to eq("doop")
      expect(list.head).to be_instance_of(Node)
      expect(list.head.next_node).to be(nil)
    end

    it 'counts things in list' do
      list = LinkedList.new
      list.append("doop")
      
      expect(list.count).to eq(1)
    end

    it 'converts data to string' do
      list = LinkedList.new
      list.append("doop")

      expect(list.to_string).to eq("doop")
    end
  end

  describe 'can have methods applied to multiple nodes' do
    it 'adds a second node' do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.head.next_node).to be_instance_of(Node) 
    end
    it 'counts number of nodes in list' do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")
      list.append("dahp") #I wanted to make sure it would work past 2.

      expect(list.count).to eq(3) 
    end

    it 'prints out string of data' do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.to_string).to eq("doop deep") 
    end
  end

  describe 'additional method tests' do
    it 'adds node to front of array, as head' do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")

      expect(list.to_string).to eq("dop plop suu")
      expect(list.count).to eq(3)
    end

    it 'inserts new data into a specified index' do 
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      list.insert(1,"woo")

      expect(list.insert(1,"woo")).to eq("woo")
      expect(list.count).to eq(5)
      expect(list.head.next_node.data).to eq("woo")
    end

    it 'prints list data into string' do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      list.insert(1,"woo")

      expect(list.to_string).to eq("dop woo plop suu")
    end

    it 'finds node element and returns data/additioal nodes' do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.to_string).to eq("deep woo shi shu blop")
      expect(list.find(2,1)).to eq("shi")
    end

    it 'checks to see if list includes data' do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.includes?("deep")).to be(true)
    end
    
    it 'removes last node from list' do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.pop).to eq("blop")
      expect(list.pop).to eq("shu")
      expect(list.to_string).to eq("deep woo shi")
    end

  end
end