class EtalasesController < ApplicationController
  before_action :set_etalase, only: [:show, :edit, :update, :destroy]

  def index
    @etalases = Etalase.all
  end

  def show
  end

  def new
    @etalase = Etalase.new
  end

  def edit
  end

  def create
    @etalase = Etalase.new(etalase_params)

    respond_to do |format|
      if @etalase.save
        format.html { redirect_to @etalase, notice: 'Etalase was successfully created.' }
        format.json { render action: 'show', status: :created, location: @etalase }
      else
        format.html { render action: 'new' }
        format.json { render json: @etalase.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @etalase.update(etalase_params)
        format.html { redirect_to @etalase, notice: 'Etalase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @etalase.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @etalase.destroy
    respond_to do |format|
      format.html { redirect_to etalases_url }
      format.json { head :no_content }
    end
  end

  private
      def set_etalase
      @etalase = Etalase.find(params[:id])
    end

      def etalase_params
      params.require(:etalase).permit(:title, :photo, :description, :price)
    end
end
