class VideosController < ApplicationController
  skip_before_action :authenticate_user!

  def index

    require 'open-uri'
    require 'nokogiri'

    Nokogiri::HTML(open("http://www.fightmasteryoga.com/30-day-yoga-challenge-for-beginners/").read).search('.BlogList-item-title').each do |video|
      puts video.text.strip
      puts "http://www.fightmasteryoga.com"+"#{video.attribute('href').value}"
    end



  end
end

    # url = "https://cervejamusa.com/en/points-of-sale/"

    # data =

    # beers =
