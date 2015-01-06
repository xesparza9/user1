class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
    def show
      @user = User2.find_by_id(params['id'])
      
      render 'show'
    end

  def new
  end
 
  def create
    u = User2.new
  u.name = params['name']
  u.url = params['url']
  u.bio = params['bio']
  u.save
    redirect_to "/user/#{ u.id }"
end
  
  def edit
    @user = User2.find_by_id(params['id'])
end
  
  
def update
  u = User2.find_by_id(params['id'])
  u.name = params['name']
  u.url = params['url']
  u.bio = params['bio']
  u.save
  redirect_to "/user/#{ u.id }"
end
  def destroy
    u = User2.find_by_id(params['id'])
    u.destroy
  end
end

 
