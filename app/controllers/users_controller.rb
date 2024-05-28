class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def details
        @user = User.find(params[:id])
    end
end
