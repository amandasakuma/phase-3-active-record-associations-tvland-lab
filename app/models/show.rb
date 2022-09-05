class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters

    def actors_list
        self.actors.map do |actor|
            "#{actor.first_name} #{actor.last_name}"
            #actor.full_name also works bc it was defined in actor.rb
        end
    end
end