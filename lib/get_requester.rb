class GetRequester
  attr_accessor :url
  
  def initialize(url)
  end 
  
  def get_response_body
    uri = URI.parse(URL)
  response = Net::HTTP.get_response(uri)
  response.body
  end
  
  def parse_json
    
    programs = JSON.parse(self.get_programs)
  programs.collect do |program|
    program["agency"]  
  end
  end
end