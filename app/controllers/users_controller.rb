class UsersController < ApplicationController
	before_filter :check_role
  def index
  	@users = User.all
  end
  def new
  	@user = User.new
    @user.policy_holders.build
  end
  def create
  	@user = User.create(params[:user])
    @policy_holder = @user.policy_holders.build(params[:policy_holders])
    p @policy_holder.user_id
  	if @user.save
      flash[:notice] = "User successfully created"
      redirect_to users_path
  	else
  		puts "User not created"
  	end
  end

  def edit
  	 @user = User.find(params[:id])
  end

  def show
  	@user = User.find(params[:id])
  end

  protected 
  def check_role
  end
end
