User.create(
	{ 	
		:name => 'desenvolvedor',
		:email => 'dev@henz.com.br',
		:password => 'henz123456789',
		:password_confirmation => 'henz123456789'
	}
)

require 'net/http'
require 'json'

module BRPopulate
  def self.states
    http = Net::HTTP.new('raw.githubusercontent.com', 443); http.use_ssl = true
    JSON.parse http.get('/celsodantas/br_populate/master/states.json').body
  end

  def self.capital?(city, state)
    city["name"] == state["capital"]
  end

  def self.populate
    states.each do |state|
      state_obj = State.new(:acronym => state["acronym"], :name => state["name"])
      state_obj.save
      
      state["cities"].each do |city|
        c = City.new
        c.name = city
        c.state = state_obj
        c.capital = capital?(city, state)
        c.save
      end
    end
  end
end

BRPopulate.populate