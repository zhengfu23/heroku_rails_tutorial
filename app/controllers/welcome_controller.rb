class WelcomeController < ApplicationController
  def index
    @time = Time.now
    @times_displayed ||= 0
    @times_displayed += 1
  end
end
