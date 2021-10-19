class UsersController < ApplicationController
    # before_action :authenticate_user!, only: [:show, :edit, :update, :destroy]

    def show
        @user = User.find(params[:id])
    end
end