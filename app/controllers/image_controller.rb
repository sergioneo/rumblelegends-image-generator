class ImageController < ApplicationController

  def dinosaur
    require "dna_reader.rb"

    svg_params = DnaReader::dna_read_dino(params[:id])

    puts svg_params[:colorCombination]
    colorCombination = ColorCombination.where(external_id: svg_params[:colorCombination]).first

    svg_params[:secondaryColor] = colorCombination.secondary_color
    svg_params[:primaryColor] = colorCombination.primary_color
    svg_params[:darkPrimary] = colorCombination.darkened_primary
    svg_params[:lightPrimary] = colorCombination.lightened_primary
    svg_params[:darkSecondary] = colorCombination.darkened_secondary

  	render partial: "dinosaur", content_type: "image/svg+xml", locals: svg_params
  end

  def unicorn
    require "dna_reader.rb"

    decoded_locals = DnaReader::dna_read_uni(params[:id])

    render partial: "unicorn", content_type: "image/svg+xml", locals: decoded_locals
  end
end
