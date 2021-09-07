class SearchController < ApplicationController
  def index
    nation  = params[:nation].gsub('_',' ')
    @total_members = NationFacade.nation_search_details(nation, pages = 5)
    @batch_of_twenty_five = @total_members.first(25)
  end
end
