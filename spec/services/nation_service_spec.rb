require 'rails_helper'

describe NationService do
  describe '#nation members' do
    it 'returns all members of a nation' do #first 25 members
      VCR.use_cassette('nation search') do # did VCR before i saw it wasn't required...
        response = NationService.nation_search('Fire Nation')

        expect(response).to be_an(Array)
        expect(response.first).to be_a(Hash)
        expect(response.count).to eq(97)
        expect(response.first).to have_key(:allies)
        expect(response.first).to have_key(:affiliation)
      end
    end
  end
end
