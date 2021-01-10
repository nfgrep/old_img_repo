class Image < ApplicationRecord
    
    include Rails.application.routes.url_helpers

    has_one_attached :file

    def get_url
        url_for(self.file)
    end
end
