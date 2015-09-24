module Spree
  module Admin

class VendorsController < Spree::Admin::BaseController
  before_action :set_spree_vendor, only: [:show, :edit, :update, :destroy]

  # GET /spree/vendors
  def index
    @spree_vendors = Spree::Vendor.all
  end

  # GET /spree/vendors/1
  def show
  end

  # GET /spree/vendors/new
  def new
    @spree_vendor = Spree::Vendor.new
  end

  # GET /spree/vendors/1/edit
  def edit
  end

  # POST /spree/vendors
  def create
    @spree_vendor = Spree::Vendor.new(spree_vendor_params)

    if @spree_vendor.save
      redirect_to @spree_vendor, notice: 'Vendor was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /spree/vendors/1
  def update
    if @spree_vendor.update(spree_vendor_params)
      redirect_to @spree_vendor, notice: 'Vendor was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /spree/vendors/1
  def destroy
    @spree_vendor.destroy
    redirect_to spree_vendors_url, notice: 'Vendor was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spree_vendor
      @spree_vendor = Spree::Vendor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def spree_vendor_params
      params.require(:spree_vendor).permit(:name, :address1, :address2, :city, :state, :country, :phone, :fax, :active, :leadtimedays)
    end
end
  end
end