class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource

    protected

    def layout_by_resource
      if devise_controller?
        "sessions"
      else
        "application"
      end
    end
    
    before_filter :get_yorum

    
      def get_yorum
        @sonyorum = Yorum.last
      end
      
    before_filter :users
      
      def users
      @users = User.all
      
      
    end
  
 
  
    
end
