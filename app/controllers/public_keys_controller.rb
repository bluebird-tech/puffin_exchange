class PublicKeysController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy, :index]
  before_action :correct_user, only: :destroy


    def index
      @public_keys = current_user.public_keys
    end

    def new
       @public_key = current_user.public_keys.build
    end

    def create
      @public_key = current_user.public_keys.build(public_key_params)
      if @public_key.save
        # TODO @public_key.activate
        flash = "New Public Key created"
        redirect_to "/public_keys"
      else
        render "/public_keys"
      end
    end

    def destroy
      @public_key.destroy
      flash[:success] = "Public Key deleted"
      redirect_to "/public_keys"
    end


    private

      def public_key_params
        params.require(:public_key).permit(:key)
      end

      def correct_user
        @public_key = current_user.public_keys.find_by(id: params[:id])
        redirect_to root_url if @public_key.nil?
      end
end
