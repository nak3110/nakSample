class AnythingsController < ApplicationController
  def index
    sort = params[:sort]
    @anythings = Anything.order(sort)
  end

  def new
    @anything = Anything.new
  end

  def destroy
    Anything.destroy(params[:id])
    redirect_to anythings_path
  end

  def create
    @anything = Anything.new(anything_params)
    @anything.save
    redirect_to anythings_path
  end

  private
    def anything_params
      params.require(:anything).permit(
        :title,
        :col1,
        :col2,
        :col3,
        :col4
      )
    end
end
