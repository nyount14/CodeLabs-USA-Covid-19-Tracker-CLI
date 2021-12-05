class Country
    attr_accessor :name, :confirmed_cases, :overall_deaths, :recoveries

    @@Countries = []

    def initialize(attributes)
        attributes.each {|key, value| self.send("#{key}=", value)}
    end

    def self.all
        @@Countries
    end
end
