class MiniblogsController < ApplicationController
    
    def index
      @miniblogs = Miniblog.all
        
    end
end
