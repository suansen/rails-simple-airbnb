class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save

    if @review.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def flat_params
    params.require(:flat).permit(:content)
  end
end
