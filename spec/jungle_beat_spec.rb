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

      expect(jb.play) # To be played at a rate of 100
    end

    it 'resets rate at which sound is played' do
      jb = JungleBeat.new("deep dop dop deep")
      jb.rate = 100
      jb.reset_rate

      expect(jb.play) # To be played at the default rate
    end
  end

  describe 'append only specified data to list' do
    it 'append only specified data to list' do
      jb = JungleBeat.new("deep")
      jb.append("Mississippi")

      expect(jb.count).to eq(1)
      expect(jb.all).to eq("deep")
    end
  end

  describe 'plays voice' do
    it 'plays default voice' do
      jb = JungleBeat.new("scoopity doopity boopity bop")
      jb.rate = 100

      expect(jb.play) # To be played at a rate of 100 in Boing voice.
    end

    it 'plays different voice' do
      jb = JungleBeat.new("scoopity doopity boopity bop")
      jb.rate = 100
      jb.voice = "Daniel"

      expect(jb.play) # To be played at a rate of 100 in Daniel voice.
    end

    it 'plays default voice and default rate' do
      jb = JungleBeat.new("scoopity doopity boopity bop")
      jb.rate = 100
      jb.voice = "Daniel"
      jb.reset_rate
      jb.reset_voice

      expect(jb.play) # To be played at a rate of 100 in Boing voice.
    end
  end
end

