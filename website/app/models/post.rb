class Post < ApplicationRecord
    validates :title, :summary, :body, presence:true 
    mount_uploader :image , ImageUploader
    has_rich_text :summary
    default_scope -> { order('created_at DESC') }
    
end
