class Incident < ApplicationRecord
    has_many :apologies
    has_many :useres, through: :apologies
    validates :body, length: {minimum: 5}
    accepts_nested_attributes_for :apologies

    def apologized?(user)
        !!self.apologies.find{ |apology| apology.user_id === user.id}
    end

    def apology_users_count
        users = self.apologies.map do |apology|
            apology.user
        end
        users.uniq.count
        end
    end

    def apologies_count
        self.apologies.count
    end
end
