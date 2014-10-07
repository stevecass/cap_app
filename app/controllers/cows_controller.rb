class CowsController < ApplicationController
  def index
    @cows = Cow.all
    @hostname = Socket.gethostname
    @request_host = request.host
    @db_info = ActiveRecord::Base.connection.adapter_name
  end
end
