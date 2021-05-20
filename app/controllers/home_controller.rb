class HomeController < ApplicationController
  before_action :autenticate_user!

  def index
    @tags_data = current_user.contents.joins(:tags).group('tags.name').count
  end
end