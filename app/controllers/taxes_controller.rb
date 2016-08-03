class TaxesController < ApplicationController
  before_action :set_tax, only: [:show, :edit, :update, :destroy]
  def index
     @taxes = Tax.all
  end

  def new
    @taxes = Tax.new
  end

  def create
    @tax = Tax.new(tax_params)
    if @tax.save
      redirect_to @tax, notice: 'Tax was successfully created.'
    else
      render :new
    end
  end

  def destroy
  end

  def show
  end

  def edit
  end

  def update
  end
  
  private

    def set_tax
      @tax = Tax.find(params[:id])
    end
  
    def tax_params
      params.require(:tax).permit(:name, :percentage, :default)
    end

end
