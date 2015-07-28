class PagesController < ApplicationController
  before_action :authenticate_user! , except: [ :index , :about , :contact ]

  def index
  end
end
