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
    end
  end
end