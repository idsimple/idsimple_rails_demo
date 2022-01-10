class HomeController < ApplicationController
  def index
    render plain: "Hello! You're now authenticated!"
  end
end
