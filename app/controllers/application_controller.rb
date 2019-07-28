class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
end
def hello
    render html: "hello, world!"
  end

 def index
     @users = User.all

 end

 def show
 end

 def new
 end

 def edit
  end

 def create
 end

 def update

   end

def destroy
end


