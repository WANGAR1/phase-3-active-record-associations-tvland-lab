class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def network
        network_id.present? ? Network.find(network_id) : nil
    end

    def actors_list
        actors.map { |actor| actor.full_name }
    end
end