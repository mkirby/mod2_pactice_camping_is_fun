class Signup < ApplicationRecord
    belongs_to :camper
    belongs_to :activity
    validates :camper_id, :activity_id, :time, presence: true
    validates :time, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 24}

    def display_time
        @new_time = ""
        if self.time < 10
            @new_time += "0"
            @new_time += self.time.to_s
            @new_time += "00"
        else
            @new_time += self.time.to_s
            @new_time += "00"
        end
        @new_time
    end
end
