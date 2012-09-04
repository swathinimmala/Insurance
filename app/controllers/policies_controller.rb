class PoliciesController < ApplicationController
  def index
    @policies = Policy.all
  end
  def new
  	@policy = Policy.new(params[:policy])
  end
  def create
  	@policy = Policy.create(params[:policy])
  	if @policy.save!
  	  redirect_to @policy
  	else
  	  @policy.errors.each do |err|
  	    puts err
  	  end
  	end
  end

  def edit
  	@policy = Policy.find(params[:id])
  end

  def show
  	@policy = Policy.find(params[:id])
  end
end
