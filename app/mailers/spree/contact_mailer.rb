module Spree
  class ContactMailer < ActionMailer::Base

    
    def notification contact
      @contact = contact
      
      mail(
        :to => contact.topic.email,
        :bcc => site_owner_email,
        :reply_to => contact.email,
        :from => mail_from,
        :subject => "#{Spree::Config[:site_name]} : #{contact.topic.title}"
      )
    end
    
    def confirmation contact
      @contact = contact
      
      mail(
        :to => contact.email,
        :reply_to => site_owner_email,
        :from => mail_from,
        :subject => "#{Spree::Config[:site_name]} : #{contact.topic.title}"
      )
    end
    
    private
    def mail_from
      Spree::BaseMailer.from_address
    end
  
    def site_owner_email
      Spree::BaseMailer.from_address
    end
  end
  
end