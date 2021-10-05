class UsersController < ApplicationController 
  def index
    @users = User.all 
  end 

  def new
      @user =  User.new  
  end 
  
  def ajax_form
    @deep = "Hello Indore"
  end
  
  def create_ajax_form_user 
    debugger
     @deep = "Hello Indore"
     @user = User.create(gender: params[:gender],first_name: params[:first_name], last_name: params[:last_name], mobile_no: params[:mobile_no]) 
     @user.images.attach(params[:images])
    respond_to :js
  end 

  def ajax
    @deep = "Hello Indore"
  end 

  def show 
    @user = User.find(params[:id])
  end

  def create_ajax 
    @user = User.create(first_name: params[:first_name],language: params[:language],city_name: params[:city_name],last_name: params[:last_name]) 
    @user.images.attach(params[:images])
  end 

  def edit
      #@user = User.find(params[:id])
  end
 
# def update 
#   @user = User.find(params[:id])
#   if @user.update(gender: params[:gender],first_name: params[:first_name],last_name: params[:last_name],mobile_no: params[:mobile_no])
#       redirect_to @user, notice: "User was successfully updated!"
    
#   else
#       render 'edit' 
#   
  def destroy 
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
    format.html { redirect_to root_path, notice: "Friend was successfully destroyed." }
    format.json { head :no_content }
    format.js  { render :layout => false }
    end
  end
  
  private
    def user_params
      params.permit(:first_name, :last_name, :images[],:mobile_no,:gender,:commit)
    end
   
end

