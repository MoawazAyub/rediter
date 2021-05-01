module Api
  class CyberInfosController < ApplicationController
    def index
      render json: RedditChannel::FetchCyberSecurity.new.call
    end
  end
end
