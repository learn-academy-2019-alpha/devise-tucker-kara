class SkateboardsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    @skateboard = current_user.skateboard.new(skateboard_params)

    respond_to do |format|
      if @skateboard.save
        format.html { redirect_to @skateboard, notice: 'Skateboard was successfully created.' }
        format.json { render :show, status: :create, location: @skateboard }
      else
        format.html { render :new }
        format.json { rneder json: @skateboard.errors, status: :unprocessable_entity }
      end
    end
  end
end
