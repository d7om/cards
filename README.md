# Congratulations Card Generator

This is a simple Rails application that allows users to create personalized congratulations cards by adding their names to predefined card templates. The generated cards are saved as image files and can be downloaded for sharing.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Ruby: Ensure you have Ruby installed. You can check by running `ruby -v` in your terminal.

- Rails: Make sure you have the Ruby on Rails framework installed. You can check by running `rails -v`.

- ImageMagick: This project uses the RMagick gem to manipulate images. You need to have ImageMagick installed on your system.

  - **Linux**: You can typically install ImageMagick using your package manager. For example, on Ubuntu, you can run `sudo apt-get install imagemagick`.

  - **macOS**: You can install ImageMagick using Homebrew with the command `brew install imagemagick`.

  - **Windows**: You can download the installer from the [ImageMagick website](https://imagemagick.org/script/download.php#windows) and follow the installation instructions.

## Getting Started

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/d7om/congratulations-card-generator.git

2. Change into the project directory:

   ```bash
   cd congratulations-card-generator

3. Install the required Ruby gems:

   ```bash
   bundle install

4. Start the Rails server:

   ```bash
   rails s

5. Open your web browser and visit http://localhost:3000 to access the Congratulations Card Generator.


## Usage

On the home page, you will see a form where you can enter your name and select a card template.

Click the "Generate Card" button to create your personalized congratulations card.

After generating the card, you will be redirected to a new page displaying the card image.

You can download the card by clicking the "Download Card" button.

To generate another card, click the "Generate Another Card" link.

## Folder Structure

app/controllers: Contains the controller for the card generator.
app/views: Contains the views for the card generator.
public: Contains the public files, including uploaded card images.
Contributing
Contributions are welcome! If you'd like to contribute to this project, please fork the repository and submit a pull request.

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.

## Acknowledgments
This project uses the RMagick gem for image manipulation.
Special thanks to ImageMagick for their powerful image processing library.

Happy card generating!