class Spree::ContactsController < Spree::StoreController
  
  helper "spree/products"

  def new
    @contact = Spree::Contact.new
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end
  
  def create
    @contact = Spree::Contact.new(permitted_params[:contact])
    
    if @contact.save
      #todo mailer here
      
      redirect_to(spree.root_path, :notice => t('spree.contacts.notices.success'))
    else
      render :new
    end
  end
  
  private
  def accurate_title
    t('spree.contacts.new.contact')
  end
  
  def permitted_params
    params.permit(:contact => [:email, :message, :name, :topic_id, :order_number])
  end

end