class VideosController < ApplicationController
  skip_before_action :authenticate_user!

  def index

    require 'open-uri'
    require 'nokogiri'

    search_keyword = 'yoga'

    url = "https://www.youtube.com/results?search_query=#{search_keyword}"
    doc = open(url).read
    parsed_doc = Nokogiri::HTML(doc)

    video_infos = parsed_doc.search('.ytd-simple-endpoint .style-scope .ytd-video-renderer').take(10)
    videosArray = []


    video_infos.each do |video|
      link = video.attribute('href').value
      # @videosArray << Video.new(link)

      puts link
    end




  end

  def show

  end


end
