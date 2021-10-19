class ApplicationController < ActionController::Base
    def render_404
        render :template => "errors/error_404", :status => 404
    end
end
