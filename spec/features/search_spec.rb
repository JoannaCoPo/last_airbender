require 'rails_helper'

RSpec.describe 'Search index' do
  describe 'search for members of a specific nation' do
    it 'displays the total number of people who live in nation' do
      VCR.use_cassette('nation search') do
        visit root_path

        page.select 'Fire Nation', from: "nation"
        click_on "Search For Members"

        expect(current_path).to eq(search_path)
        # expect(page).to have_content()
      end
    end
  end
end
