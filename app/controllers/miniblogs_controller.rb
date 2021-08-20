class MiniblogsController < ApplicationController
    
    def index
      @miniblogs = Miniblog.all
        
    end
    
    def new
      @miniblog = Miniblog.new
    end
    
    def create
      Miniblog.create(miniblog_params)
    end
    
    def destroy
      miniblog = Miniblog.find(params[:id])
      miniblog.destroy
    end
    
    def edit
      @miniblog = Miniblog.find(params[:id])
    end
    
    def update
      miniblog = Miniblog.find(params[:id])
      miniblog.update(miniblog_params)
    end
    
    private #以下はプライベートメソッドを定義しています
    
    def miniblog_params
      params.require(:miniblog).permit(:text)
    end
end
