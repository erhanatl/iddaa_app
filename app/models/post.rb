class Post < ActiveRecord::Base
  belongs_to :user
  validates :kod, presence: true
  validates :ev_sahibi, presence: true
  validates :misafir, presence: true
  validates :oran, presence: true
  validates :tahmin, presence: true
  attr_accessible :ev_sahibi, :kod, :misafir, :oran, :tahmin, :user_id, :sembol, :skor, :sonuc
end
