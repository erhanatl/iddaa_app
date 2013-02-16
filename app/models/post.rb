class Post < ActiveRecord::Base
  belongs_to :user
  validates :kod, :presence => {:message => 'eksik'}
  validates :ev_sahibi, :presence => {:message => 'eksik'}
  validates :misafir, :presence => {:message => 'eksik'}
  attr_accessible :ev_sahibi, :kod, :misafir, :oran, :tahmin, :user_id, :sembol, :skor, :sonuc, :tarih
  before_save { |post| post.ev_sahibi = post.ev_sahibi.capitalize }
  before_save { |post| post.misafir = post.misafir.capitalize }
end
