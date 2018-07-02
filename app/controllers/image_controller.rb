class ImageController < ApplicationController

  def dinosaur
    require "dna_reader.rb"

    decoded_locals = DnaReader::dna_read_dino(params[:id])

    puts decoded_locals

  	render partial: "dinosaur", content_type: "image/svg+xml", locals: decoded_locals
  end

  def unicorn
    require "dna_reader.rb"

    decoded_locals = DnaReader::dna_read_uni(params[:id])

    render partial: "unicorn", content_type: "image/svg+xml", locals: decoded_locals
  end
end
