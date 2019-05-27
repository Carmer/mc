class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:user).permit(:role, :first_name, :last_name, :email, :phone, :notes, :password, :password_confirmation)
    end
end

