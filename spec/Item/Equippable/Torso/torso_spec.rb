require_relative '../../../../lib/Item/Equippable/Torso/torso.rb'

RSpec.describe Torso do

  context "constructor" do
    it "has the correct default parameters" do
      torso = Torso.new
      expect(torso.name).to eq "Torso"
      expect(torso.price).to eq 0
      expect(torso.consumable).to eq false
      expect(torso.stat_change).to eq StatChange.new
      expect(torso.type).to eq :torso
    end

    it "correctly assigns custom parameters" do
      shirt = Torso.new(name: "Shirt",
                        price: 20,
                        consumable: true,
                        stat_change: StatChange.new(attack: 2,
                                                    defense: 2),
                        type: :helmet)
      expect(shirt.name).to eq "Shirt"
      expect(shirt.price).to eq 20
      expect(shirt.consumable).to eq true
      expect(shirt.stat_change).to eq StatChange.new(attack: 2,
                                                     defense: 2)
      # Cannot be overwritten.
      expect(shirt.type).to eq :torso
    end
  end

end
