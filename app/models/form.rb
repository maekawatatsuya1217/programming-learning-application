class Form < ApplicationRecord

    has_one_attached :image

    with_options presence: true do
        validates :day
        validates :time
        validates :good
        validates :bad
        validates :improvement
        validates :image
    end
    
    belongs_to :user

end
