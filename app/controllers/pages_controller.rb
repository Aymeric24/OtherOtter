class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @otters = Otter.first(3)
  end
end
