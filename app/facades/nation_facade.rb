class NationFacade
  def self.nation_search_details(nation, pages = 5)
    response = (1..pages).sum do |p|
      NationService.nation_search(nation, p)
    end
    response.map do |char_details|
      Nation.new(char_details)
    end
  end
end


#check if there are photos
