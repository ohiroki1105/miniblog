class UsersController < ApplicationController
    def show
      user = User.find(params[:id])
      @nickname = user.nickname
      @miniblogs = user.miniblogs
    end
end
