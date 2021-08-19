class SuppliersController < ApplicationController
  before_action :set_supplier, only: %i[create update]

  def index
    @supliers = Supplier.last(10)
  end
  
  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      flash[:success] = 'Supplier was created '
      render :index
    else
      flash[:error] = 'Supplier wasnt create'
      render :new
    end
  end

  def update
  end

  private

   def supplier_params
     params.permit(:supplier_code, :supplier_name)
   end

  def set_supplier
    @supplier = Supplier.find_by(supplier_code: params[:supplier_code])
  end
end
