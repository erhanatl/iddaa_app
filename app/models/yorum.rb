class Yorum < ActiveRecord::Base
   belongs_to :user
   validates :title, presence: true
   validates :yazi, presence: true
   attr_accessible :title, :user_id, :yazi
end
