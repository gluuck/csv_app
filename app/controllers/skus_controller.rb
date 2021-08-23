class SkusController < ApplicationController
  before_action :set_sku, only: %i[ show edit update destroy ]

  def index
    @skus = Sku.last(10)
  end

  def show
  end

  def new
    @sku = Sku.new
  end

  def edit
  end
  
  def create
    @sku = Sku.new(sku_params)

    respond_to do |format|
      if @sku.save
        format.html { redirect_to @sku, notice: "Sku was successfully created." }
        format.json { render :show, status: :created, location: @sku }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sku.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @sku.update(sku_params)
        format.html { redirect_to @sku, notice: "Sku was successfully updated." }
        format.json { render :show, status: :ok, location: @sku }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sku.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @sku.destroy
    respond_to do |format|
      format.html { redirect_to skus_url, notice: "Sku was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    
    def set_sku
      @sku = Sku.find(params[:id])
    end

    def sku_params
      params.permit(:sku,:supplier_id,:part_name,:col_1,:col_2,:col_3,:col_4,:col_5,:price)
    end
end
