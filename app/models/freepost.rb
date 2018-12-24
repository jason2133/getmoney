class Freepost < ApplicationRecord
    has_many :comments
    belongs_to :user 

def self.search(search)
    where("title || content LIKE ?", "%#{search}%") 
  end
  
end
