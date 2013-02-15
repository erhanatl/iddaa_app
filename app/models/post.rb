class Post < ActiveRecord::Base
  belongs_to :user
  validates :kod, :presence => {:message => 'eksik'}
  validates :ev_sahibi, :presence => {:message => 'eksik'}
  validates :misafir, :presence => {:message => 'eksik'}
  attr_accessible :ev_sahibi, :kod, :misafir, :oran, :tahmin, :user_id, :sembol, :skor, :sonuc, :tarih
end
