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

    if svg_params.values.include?("0")
      render partial: "dice", content_type: "image/svg+xml"
    else
      render partial: "dinosaur", content_type: "image/svg+xml", locals: svg_params
    end
  end

  def unicorn
    require "dna_reader.rb"

    svg_params = DnaReader::dna_read_dino(params[:id])

    puts svg_params[:colorCombination]
    colorCombination = ColorCombination.where(external_id: svg_params[:colorCombination]).first

    svg_params[:secondaryColor] = colorCombination.secondary_color
    svg_params[:primaryColor] = colorCombination.primary_color
    svg_params[:darkPrimary] = colorCombination.darkened_primary
    svg_params[:lightPrimary] = colorCombination.lightened_primary
    svg_params[:darkSecondary] = colorCombination.darkened_secondary

    if svg_params.values.include?("0")
      render partial: "dice", content_type: "image/svg+xml"
    else
      render partial: "unicorn", content_type: "image/svg+xml", locals: svg_params
    end
  end
end
