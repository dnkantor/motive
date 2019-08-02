class ChatroomController < ApplicationController
    before_action :require_user
    require "date"
    
    def index
        @message = Message.new
        @messages = Message.all
        @datetime = DateTime.now
    end
end
