class MiniblogsController < ApplicationController
  before_action :set_miniblog, only: [:edit, :show]
    
    def index
      @miniblogs = Miniblog.all
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
      params.require(:miniblog).permit(:text)
    end
    
    def set_miniblog
      @miniblog = Miniblog.find(params[:id])
    end
end
