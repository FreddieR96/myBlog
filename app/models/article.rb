class Article < ApplicationRecord
has_one_attached :display_pic
has_one_attached :pic1
has_one_attached :pic2
validates :display_pic, blob: { content_type: :image }
validates :display_pic, presence: true
validates :title, presence: true
validates :abv_title, presence: true, uniqueness: true
validates :paragraph1, presence: true
validates :paragraph2, presence: true
end
