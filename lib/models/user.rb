class User < ActiveRecord::Base

has_many :skeletons
has_many :facts

has_many :parts, through: :skeletons 


 

@@facts = []

    def self.facts
        @@facts
    end

    def self.delete_facts(index)
        @@facts.delete_at(index)
    end

end

