require 'rspec'
require './lib/linked_list'

RSpec.describe 'LinkedList' do
  describe 'instance of LinkedList' do
    it 'to be an instance of' do
      list = LinkedList.new

      expect(list).to be_instance_of(LinkedList)
    end
  end
end