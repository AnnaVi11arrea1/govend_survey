class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern


  def manifest
    render json: {
      name: "My App",
      short_name: "App",
      start_url: "/",
      display: "standalone",
      background_color: "#ffffff",
      theme_color: "#000000"
    }
  end
end
