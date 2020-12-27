class GruesController < ApplicationController

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
end
