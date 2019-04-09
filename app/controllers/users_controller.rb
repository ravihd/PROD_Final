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
            flash[:success] = "updated  successfully.."
            redirect_to user_path(@userdetials)
       
        else
            render 'edit'
        end
    end
    
    def create
        @userdetials=User.new(user_params)
            if @userdetials.save
                flash[:success] = "Data has been saved succefully."
                redirect_to user_path(@userdetials)
            else
            flash[:danger] = @userdetials.errors.full_messages
             render 'new'
            end
    end
    
    def destroy 
         set_user
            if @userdetials.destroy
                flash[:danger] = "deleted  successfully.."
                redirect_to users_path
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
