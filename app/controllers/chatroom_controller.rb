class ChatroomController < ApplicationController
    require "date"

    def index
        @messages = Message.all
        @datetime = DateTime.now
    end
end
