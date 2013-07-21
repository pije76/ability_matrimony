class MicropostsController < ApplicationController
 before_filter :signed_in_user, only: [:create, :destroy]
 before_filter :correct_user,   only: :destroy

  def index
  end

  def create
  	@micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Photo uploaded Successfully!"
      redirect_to current_user
    else
      flash[:warning] = "File error! Please upload Image file format less than 5MB"
      render 'static_pages/galleries'
    end
  end

  def destroy
      @micropost.destroy
      redirect_to current_user
    end

    private

      def correct_user
        @micropost = current_user.microposts.find_by_id(params[:id])
        redirect_to current_user if @micropost.nil?
      end
end