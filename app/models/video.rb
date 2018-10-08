class Video < ApplicationRecord

  attr_reader :link

  def initialize(link)
    @link = link
  end



end
