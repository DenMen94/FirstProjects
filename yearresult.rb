require 'httparty'
require 'json'

class Scope
  
  def initialize 

response = HTTParty.get('https://utmbworld-api.utmb.world/runner/stats/19046/GENERAL')
JSON.parse(response.body)
runner = JSON.parse(response.body)

   @year = runner.map{ |year| year["annee"] }
   @result = runner.map{ |result| result["cote"] }

  end


def year_results
p "year: #{@year}"
p "results: #{@result}"
end
    
 end 

 p 'zaebis'