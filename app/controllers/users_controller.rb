class UsersController < ApplicationController
  before_action :authenticate_user!
  authorize_resource only: %i[edit update]

  def show
    # Should set an instance class variable @courses 
    # This should equal CourseDecorator instances for each course this user has
  end

  def update
  end

  private

  def user_params
  end
end
