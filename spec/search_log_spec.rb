require 'searchlog'

describe Searchlog do

  describe "::new" do
    subject { Searchlog.new }

    it "creates a new Searchlog object" do
      expect(subject).to be_instance_of(Searchlog)
    end

    it "has a default empty attributes" do
      expect(subject.logs).to eq([])
      expect(subject.compact).to eq nil
    end
  end

  describe '#add_search' do
    it 'adds Compacted Search Info to the Searchlog Object' do
      subject.add_search(['Blue', 'Religion'])
      subject.add_search(['Yellow', 'Mountain'])
      expect(subject.logs[0].compact).to eq ['Blue', 'Religion']
      expect(subject.logs[1].compact).to eq ['Yellow', 'Mountain']
    end
  end

end
