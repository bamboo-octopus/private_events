class Event < ApplicationRecord

    validates :name, presence: true

    belongs_to :creator, class_name: "User", foreign_key: "creator_id"
    has_many :attended_events, foreign_key: "event_id"
end
