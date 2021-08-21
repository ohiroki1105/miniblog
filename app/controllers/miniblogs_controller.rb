class MiniblogsController < ApplicationController
  before_action :set_miniblog, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]
    
    def index
      @miniblogs = Miniblog.includes(:user).order("created_at DESC")
    end
    
    def new
      @miniblog = Miniblog.new
    end
    
    def create
      Miniblog.create(miniblog_params)
      redirect_to root_path
    end
    
    def destroy
      miniblog = Miniblog.find(params[:id])
      miniblog.destroy
      redirect_to root_path
    end
    
    def edit
    end
    
    def update
      miniblog = Miniblog.find(params[:id])
      miniblog.update(miniblog_params)
      redirect_to root_path
    end
    
    def show
    end
    
    private #以下はプライベートメソッドを定義しています
    
    def miniblog_params
      params.require(:miniblog).permit(:text).merge(user_id: current_user.id)
    end
    
    def set_miniblog
      @miniblog = Miniblog.find(params[:id])
    end
    
    def move_to_index
      unless user_signed_in?
        redirect_to action: :index
      end
    end
end
