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

  describe 'has methods' do
    it 'accepts new nodes' do
      list = LinkedList.new
      list.append("doop")

      expect(list.append("doop")).to eq("doop")
    end

    it 'adds new_data to list' do
      list = LinkedList.new
      list.append("doop")
      list

      expect(list.head.data).to eq("doop") 
    end
  end
end