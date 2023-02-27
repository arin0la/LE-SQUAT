class ToiletsController < ApplicationController

  def show
    @toilets = Toilet.all
  end

  def new
    @toilet = Toilet.new
  end

end
