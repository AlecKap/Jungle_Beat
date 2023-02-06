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

  describe 'can add nodes to list' do
    it 'can add multiple nodes at once to list' do
      jb = JungleBeat.new
      
      expect(jb.append("deep doo ditt")).to eq(jb.list.to_string)
      expect(jb.list.head.data).to eq("deep")
      expect(jb.list.head.next_node.data).to eq("doo")
    end

    it 'can add multiple nodes at once to list' do
      jb = JungleBeat.new
      jb.append("deep doo ditt")
      jb.append("woo hoo shu")
      
      expect(jb.list.count).to eq(6)
    end
    
    it 'can add multiple nodes at once to list' do
      jb = JungleBeat.new
      jb.append("deep doo ditt woo hoo shu")
      
      expect(jb.list.count).to eq(6)
    end
  end

  describe 'plays sound' do
     it 'plays sound of string of node data' do
      jb = JungleBeat.new
      jb.append("deep doo ditt woo hoo shu")

      expect(jb.play)
    end

    it 'plays sound at specified rate' do
      jb = JungleBeat.new
      jb.append("deep doo ditt woo hoo shu")
      jb.rate = 100

      expect(jb.play)
    end
  end
end

