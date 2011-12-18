class Bookmark < ActiveRecord::Base
  before_save :validate_image

  def validate_image 
    if self.img == ""
    self.img = "http://aux.iconpedia.net/uploads/1601722968.png" 
    end
  end
end
