require 'rspec'
require './lib/jungle_beat'
require './lib/linked_list'
require './lib/node'

RSpec.describe 'JungleBeat' do
  describe 'exisits' do
    it 'is an instance of' do
      jb = JungleBeat.new
      
      expect(jb).to be_instance_of (JungleBeat)
    end

    it 'has head value' do
      jb = JungleBeat.new
      
      expect(jb.list.head).to be(nil)
    end
  end
end
