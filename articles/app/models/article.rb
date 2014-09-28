class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 5 , maximum: 8}
validates_format_of :title, with: /\A[a-zA-Z .]+\Z/, message: "can include letters"
  
validates :text,  :length => {:maximum =>500 }                   
end
