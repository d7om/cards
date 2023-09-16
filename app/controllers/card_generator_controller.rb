class CardGeneratorController < ApplicationController
  def new
    # Display a form for users to enter their names and select a card template
  end

  def create

    selected_image_path = params[:card_order][:template_path]
    user_name = params[:user_name]
    template_path = params[:card_order][:template_path]

    # Load the card template image using RMagick
    template = Magick::Image.read(template_path).first

    # Add the user's name to the image with the correct font and size
    draw = Magick::Draw.new
    draw.annotate(template, 800, 500, 0, 0, user_name) do |card|
      card.font = 'Cairo-VariableFont_slnt,wght.ttf'
      card.pointsize = 36         # Specify the font size
      card.fill = 'white'        # Specify the font color
      card.gravity = Magick::CenterGravity # Position the text at the center
    end


   # Create a unique filename for the generated image
   file_name = "congratulations_card_#{Time.now.to_i}.png"

   # Save the generated image to the public directory
   file_path = Rails.root.join('public', file_name)
   template.write(file_path)
    
   # Redirect to show with param file_name
   redirect_to action: "show", file_name: file_name

end

def show
  file_path = Rails.root.join('public', params[:file_name])

  if File.exist?(file_path)
    send_file file_path, type: 'image/png', disposition: 'inline'
  else
    flash[:error] = "Image not found"
    redirect_to root_path
  end
end

end
