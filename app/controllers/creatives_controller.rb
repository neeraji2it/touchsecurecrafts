class CreativesController < ApplicationController
  def new
    @creative = Creative.new
  end

  def index
    @creatives = Creative.all
  end

  def create
    @creative = Creative.new(params[:creative])
    if @creative.save!
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def destroy
    @creative = Creative.find(params[:id])
    @creative.destroy
    redirect_to creatives_path
  end

end
