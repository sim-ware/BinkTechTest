require 'search'

describe Search do

  describe "::new" do
    subject { Search.new }

    it "creates a new Search object" do
      expect(subject).to be_instance_of(Search)
    end

    it "has a default empty attributes" do
      expect(subject.colour).to eq('')
      expect(subject.noun).to eq('')
    end
  end

  describe '#colour_selector'do
    it 'Adds a Colour to the Search Object' do
      subject.colour_selector('Blue')
      expect(subject.colour).to eq 'Blue'
    end
  end

  describe '#random_noun'do
    it 'assigns a random Noun to the Search Object' do
      subject.random_noun
      expect(subject.noun).not_to eq ''
    end
  end

end
