module Spree
  class Topic < ActiveRecord::Base
  
    has_many :contacts
      
    validates :title, :email, :presence => true
    
  end
end