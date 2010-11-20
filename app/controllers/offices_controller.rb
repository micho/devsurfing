class OfficesController < ApplicationController

  def index
    @offices = Office.where('desks > 0')
  end

  def show
    @office = Office.find(params[:id])
  end

  def new
    @office = Office.new
    @office.desks = 0
  end

  def edit
    @office = Office.find(params[:id])
  end

  def create
    @office = Office.new(params[:office])

    if @office.save
      redirect_to(@office, :notice => 'Office was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @office = Office.find(params[:id])

    if @office.update_attributes(params[:office])
      redirect_to(@office, :notice => 'Office was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @office = Office.find(params[:id])
    @office.destroy

    redirect_to(offices_url)
  end
end
