class SuppliersController < ApplicationController
  before_action :set_supplier, only: %i[create update]

  def index
    @suppliers = Supplier.last(10)
  end

  def show
  end


  def new
    @supplier= Supplier.new
  end

  def edit
  end

  def create
    @supplier = Supplier.new(supplier_params)
    respond_to do |format|
      if @supplier.save
        format.html { redirect_to @supplier, notice: "Supplier was successfully created." }
        format.json { render :index, status: :created, location: @supplier }
      else
        format.html { render :create, status: :unprocessable_entity }
        format.json { render json: @supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @supplier.update(supplier_params)
        format.html { redirect_to @supplier, notice: "Supplier was successfully updated." }
        format.json { render :index, status: :ok, location: @supplier }
      else
        format.html { render :update, status: :unprocessable_entity }
        format.json { render json: @supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @supplier.destroy
    respond_to do |format|
      format.html { redirect_to supplier_url, notice: "Supplier was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

   def supplier_params
     params.permit(:supplier_id, :supplier_name)
   end

  def set_supplier
    @supplier = Supplier.find(params[:id])
  end
end
