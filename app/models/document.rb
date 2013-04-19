class Document < ActiveRecord::Base
  attr_accessible :title, :asset

  has_attached_file :asset,
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/aws.yml",
    :s3_endpoint => 's3-us-west-2.amazonaws.com',
    :url => ':s3_domain_url',
    :path => '/:class/:attachment/:id_partition/:style/:filename'

  validates_attachment :asset, :presence => true,
    :content_type => {:content_type => "text/plain"},
    :size => { :in => 0..10.kilobytes }
end
