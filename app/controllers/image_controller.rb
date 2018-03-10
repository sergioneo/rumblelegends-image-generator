class ImageController < ApplicationController
  def view
  	render partial: "view", content_type: "image/svg+xml"
  end
end
