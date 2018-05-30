class Product < ApplicationRecord
	extend FriendlyId
    friendly_id :title, use: :slugged
    
    has_attached_file :image,
      :default_url => "/images/:style/missing.png",
      :storage => :s3,
      :s3_credentials => {
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'] },
      :url => ':s3_alias_url',
      :s3_host_alias => 'd2rtaat5evd1m4.cloudfront.net', 
      :bucket => 'noams',
      use_timestamp: false

    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

    def normalize_friendly_id(input)
     input.gsub(".", "").to_slug.to_s
    end


    def should_generate_new_friendly_id?
      attribute_changed?('title')
    end
end
