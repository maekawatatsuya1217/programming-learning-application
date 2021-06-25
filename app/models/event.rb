class Event < ApplicationRecord

    with_options presence: true do
        validates :title
        validates :content
        validates :start_time
    end

    belongs_to :user
end