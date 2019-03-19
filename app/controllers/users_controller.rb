class UsersController < ApplicationController
    
    before_action :set_user, only: [:edit, :update, :show, :destroy ]
    
    
    def index
        @userdetials = User.all
    end
    def signup
        
    end
    
    def signin
        
    end
    
    def home 
        
    end
    
    # def details
    #     @userdetials = User.all
        
    # end
    
    def new
        @userdetials = User.new
    end
    
    def edit
        set_user
        
    end

    def show
       set_user
       
    end
    
    def update
       set_user
       
        
        if @userdetials.update(user_params)
        flash[:notice] = "updated  successfully.."
        redirect_to user_path(@userdetials)
        # <%= "Hello"%>
        else
            render 'edit'
        end
    end
    
    def create
        @userdetials=User.new(user_params)
        if @userdetials.save
        flash[:notice] = "Saved data successfully.."
        redirect_to user_path(@userdetials)
        # <%= "Hello"%>
        else
            
         
        #flash[:notice] = @userdetials.errors.full_messages
         render 'new'
         
         
        end
        
       
    end
    
    def destroy 
         set_user
         
        
        if @userdetials.destroy
        flash[:notice] = "deleted  successfully.."
        redirect_to users_path
        # <%= "Hello"%>
        else
            render 'show'
        end
        
        
    end

    

    
    private
    
    def set_user
         @userdetials=User.find(params[:id])
    end
    
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
    
end
