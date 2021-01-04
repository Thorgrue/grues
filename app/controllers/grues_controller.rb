class GruesController < ApplicationController
  before_action :set_grue, only: [:show, ]

  def index
    @grues = Grue.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @grues.geocoded.map do |grue|
      {
        lat: grue.latitude,
        lng: grue.longitude,
        infoWindow: render_to_string(partial: 'info_window', locals: { grue: grue })
      }
    end
  end

  def show
  end

  def new
    @grue = Grue.new
  end

  def create
    @grue = Grue.new(grue_params)
    if @grue.save
      redirect_to @grue
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def set_grue
    @grue = Grue.find(params[:id])
  end

  def grue_params
  end
end
