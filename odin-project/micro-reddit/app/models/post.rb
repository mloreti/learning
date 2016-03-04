class Post < ActiveRecord::Base

validates :link_url, presence: true
validates :title, presence: true

belongs_to :user
has_many :comments
end
