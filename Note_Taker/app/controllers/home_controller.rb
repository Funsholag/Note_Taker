class HomeController < ApplicationController
  def index

  end
  require 'etherpad-lite'

  # Connect to your Etherpad Lite instance
  ether = EtherpadLite.connect('http://etherpad-lite.example.com', 'the api key', '1.2.1')

  # Get a Pad (or create one if it doesn't exist)
  pad = ether.pad('my first etherpad lite pad')

  puts pad.text => "Welcome to Etherpad Lite!\n\nThis pad text is synchronized as you type, so that everyone viewing..."

  # Write your the changes to the Pad
  pad.text = "What hath God wrought?"

  # There are now 2 revisions!
  puts pad.revision_numbers => [0, 1]

  # Iterate through each revision
  pad.revisions.each do |pad_rev|
    puts "Revision #{pad_rev.rev}:"
    puts pad_rev.text
  end
end
