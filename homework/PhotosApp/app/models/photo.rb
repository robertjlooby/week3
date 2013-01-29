class Photo < ActiveRecord::Base
  attr_accessible :title, :url, :caption
end
