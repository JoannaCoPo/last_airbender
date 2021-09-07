class NationService
  def self.nation_search(nation, pages)
    response = conn.get("/api/v1/characters?affiliation=#{nation}&page=#{pages}")
    parse_json(response)
  end

  private

  def self.conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
