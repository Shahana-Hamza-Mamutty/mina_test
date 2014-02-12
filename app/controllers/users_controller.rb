class UsersController < ApplicationController
	def index
  		@u = User.all.page(params[:page])
    end
    def new
    	@n=User.create
    end
    def index_pdf
        @u = User.find(params[:id])
        respond_to do |format|
        format.pdf do
            render :pdf => "pdf", :template => "users/show.html.erb"
          end
        end
    end
    def show
    	@u = User.find(params[:id])
    end
    def download
        pa = User.find(params[:id])
        send_file pa.avatar.path
    end
    def customer_orders
        @o = Order.where(customer_id:params[:id])
    end
    def customer_items
        @i = Order.where(id:params[:id])
    end
    def edit
    	@u = User.find(params[:id])
    end
    def new_edit
    	@k = Customer.find(params[:id])
    end
    def update
        x = User.find(params[:id])
        if x.update_attributes(user_params)
        	redirect_to users_path
        else
        	render ('edit')
        end
    end
    def new_update
    	y = Customer.find(params[:id])
    	y.update_attributes(customer_params)
    	redirect_to users_path
    end
    def destroy
    	@u = User.find(params[:id])
    	@u.destroy
    	redirect_to users_path
    end
    private
    	def user_params
        params.require(:user).permit(:avatar, :name, :email, :age)
    end
    def customer_params
    	params.require(:customer).permit(:name, :email, :age)
    end
end
