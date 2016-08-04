class InvoicesController < ApplicationController
  before_action :set_invoice, only: [:show, :edit, :update, :destroy]
  def index
    @invoices = Invoice.all
  end

  def new
    @invoice = Invoice.new
    #@invoice.invoice_items.build
    @invoice.products.build
    @invoice.taxes.build
  end

  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.user_id = current_user.id
    @invoice.bprofile_id = current_user.bprofile.id
    if @invoice.save
       redirect_to @invoice, notice: 'Job was successfully created.'
      else
        render :new
     end
  end

  def show
  end

  def edit
  end

  def delete
  end
  private
    def set_invoice
      @invoice = Invoice.find(params[:id])
    end
      # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_params
      params.require(:invoice).permit(:amount)
    end
end
