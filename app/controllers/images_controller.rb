class ImagesController < ApplicationController

    def show
        @image = Image.find(params[:id])
        redirect_to @image.get_url
    end

    def create
        @image = Image.create(image_params())
        render json: @image
    end

    private def image_params
        params.permit(:file)
    end

end
