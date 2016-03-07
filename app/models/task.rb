class Task < ActiveRecord::Base
  MAX_LENGTHS = {
    title: 10,
    content: 100
  }
  validates :title, presence: true, length: { maximum: MAX_LENGTHS[:title] }
  validates :content, presence: true, length: { maximum: MAX_LENGTHS[:content] }
end
