json.extract! blog, :id, :title, :main_title, :sub_title, :image, :description, :created_at, :updated_at
json.url blog_url(blog, format: :json)
