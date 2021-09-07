class Nation
  attr_reader :name,
              :allies,
              :enemies,
              :affiliations
  def initialize(char_details)
    @name = char_details[:name]
    @allies = char_details[:allies].join(",")
    @enemies = char_details[:enemies].join(",")
    @affiliations = char_details[:affiliations]
  end
end
