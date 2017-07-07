class Panel::Custom < ActiveRecord::Base
  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
<<<<<<< HEAD
  
=======

>>>>>>> 46bc14a7d20a84967976098a82cbd28de2b30780
  has_attached_file :favicon, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :favicon, content_type: /\Aimage\/.*\z/
end
