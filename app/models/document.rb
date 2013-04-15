class Document < ActiveRecord::Base
  attr_accessible :title, :asset

  has_attached_file :asset
    #,:path =>  (Rails.root + "files/:id").to_s,
    #d first:url => "/files/:id"

  validates_attachment :asset, :presence => true,
    :content_type => {:content_type => "text/plain"},
    :size => { :in => 0..10.kilobytes }
end
