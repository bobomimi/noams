class Blog < ApplicationRecord
	has_attached_file :image,
      :default_url => "/images/:style/missing.png",
      :storage => :s3,
      :s3_credentials => {
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'] },
      :url => ':s3_alias_url',
      :s3_host_alias => 'd36y0kv3zyrf84.cloudfront.net', 
      :bucket => 'danielpilates',
      use_timestamp: false

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
