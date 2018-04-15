class HogesController < ApplicationController
  before_action :set_hoge, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @hoges = Hoge.all
    respond_with(@hoges)
  end

  def show
    respond_with(@hoge)
  end

  def new
    @hoge = Hoge.new
    respond_with(@hoge)
  end

  def edit
  end

  def create
    @hoge = Hoge.new(hoge_params)
    @hoge.save
    respond_with(@hoge)
  end

  def update
    @hoge.update(hoge_params)
    respond_with(@hoge)
  end

  def destroy
    @hoge.destroy
    respond_with(@hoge)
  end

  private
    def set_hoge
      @hoge = Hoge.find(params[:id])
    end

    def hoge_params
      params.require(:hoge).permit(:name, :age)
    end
end
