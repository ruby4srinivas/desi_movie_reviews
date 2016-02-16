class Movie < ActiveRecord::Base
  belongs_to :user

  validates :title, :description,:image,  presence: true

  has_attached_file :image, styles: { large: "250x250>", medium: "150x150>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  before_save :strip_whitespaces

  def self.strip_whitespaces()
    title.squish!
    description.squish!

  end
end
