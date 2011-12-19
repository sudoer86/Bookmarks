class Bookmark < ActiveRecord::Base
  before_save :validate_image, :fix_href

  def validate_image 
    if self.img == ""
    self.img = "http://aux.iconpedia.net/uploads/1601722968.png" 
    end
  end
  def fix_href
    if not self.href.starts_with? "http://"
      self.href = "http://" + self.href
    end
  end
end
