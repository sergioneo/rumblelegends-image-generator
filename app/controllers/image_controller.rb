class ImageController < ApplicationController
  def view
  	colors = ["deepskyblue",
  		"forestgreen",
  		"powderblue",
  		"sandybrown",
  		"moccasin",
  		"lightseagreen",
  		"lemonchiffon",
  		"darksalmon",
  		"darkorchid",
  		"greenyellow",
  		"blanchedalmond",
  		"darkgoldenrod",
  		"steelblue"]

  	color_code = colors[Integer(params[:id]) % 13]
  	render partial: "view", content_type: "image/svg+xml", locals: {color_code: color_code}
  end
end
