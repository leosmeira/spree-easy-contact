Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                      :name => "easy_contact_admin_tab",
                      :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                      :text => "<%= tab(:contacts, :icon => 'icon-comments') %>",
                      :disabled => false)