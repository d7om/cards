class CardGeneratorController < ApplicationController
    def new
      # Display a form for users to enter their names
    end
  
    def create
      user_name = params[:user_name]
      template_path = params[:template_path] # Path to the selected card template
  
      # Load the card template image using RMagick
      template = Magick::Image.read(template_path).first
  
      # Add the user's name to the image
      draw = Magick::Draw.new
      draw.annotate(template, 0, 0, x, y, user_name) do
        self.font = 'path/to/your/font.ttf' # Replace with the path to your font
        self.pointsize = 36
        self.fill = 'white'
      end
  
      # Serve the generated card to the user
      send_data template.to_blob, filename: "congratulations_card.png", type: 'image/png', disposition: 'inline'
    end
  end