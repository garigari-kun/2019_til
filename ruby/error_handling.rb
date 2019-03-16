class UsersController < ApplicationController
  def show
    @user = User.find_by!(id: params[:id])
    render json: @user, status: :ok
  end
end

# Just getting errors and rescut it
class UsersController < ApplicationController
  def show
    begin
      @user = User.find_by!(id: params[:id])
      render json: @user, status: :ok
    rescue => e
      print e
    end
    render json: e.to_s, status: :not_found
  end
end
