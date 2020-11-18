class PagesController < ApplicationController
  def home
    @otters = Otter.first(3)
  end
end
