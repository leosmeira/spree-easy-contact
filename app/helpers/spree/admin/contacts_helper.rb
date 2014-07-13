module Spree
  module Admin
    module ContactsHelper
      def link_to_show(resource, options={})
        link_to_with_icon 'info', Spree.t(:display), object_url(resource), options
      end
      
      def link_to_resend(resource, options={})
        link_to_with_icon 'icon-email', Spree.t(:resend), object_url(resource), options
      end
    end
  end
end