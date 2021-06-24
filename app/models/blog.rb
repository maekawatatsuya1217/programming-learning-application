class Blog < ApplicationRecord

    has_one_attached :image

    with_options presence: true do
        validates :title
        validates :catch
        validates :article
        validates :image
    end

    belongs_to :user
    has_many :comments, dependent: :destroy
end
