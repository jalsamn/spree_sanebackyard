module Spree
  module Admin

class CasesController < Spree::Admin::BaseController
  before_action :set_spree_case, only: [:show, :edit, :update, :destroy]
  

### This is where the adding inventory into spree starts###
###########################################################


## Step 1 - Input screen for barcode  
  def receive
  end
  
## Step 2 - Confirmation Screen for product, if
## product is not found, it will show error and redirect to receive step
  def processbarcode
    if !params[:barcode].blank?
      if Spree::Variant.exists?(:sku => params[:barcode])
          @variant = Spree::Variant.find_by sku: params[:barcode]
        else
          redirect_to admin_cases_receive_path, :flash => { :error => "Product not found, please have floor manager create it!" }
      end
    end
  end
  
## Step 3 - Enter the number of cases  
  def numberofcase
    @variant = Spree::Variant.find(params[:variantid])
  end
  
## Step 4 - Process cases  
  def processcase
    @variant = Spree::Variant.find(params[:variantid])
    @numberofcases = params[:numberofcases]
    @expiratondate = params[:expiratondate]
    @unitpercase = params[:unitpercase]
    @vendor = params[:vendor]
    @costperunit = params[:costperunit]
    
    
  end  

  # GET /spree/cases
  def index
    @spree_cases = Spree::Case.all
  end

  # GET /spree/cases/1
  def show
  end

  # GET /spree/cases/new
  def new
    @spree_case = Spree::Case.new
  end

  # GET /spree/cases/1/edit
  def edit
  end

  # POST /spree/cases
  def create
    @spree_case = Spree::Case.new(spree_case_params)

    if @spree_case.save
      redirect_to @spree_case, notice: 'Case was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /spree/cases/1
  def update
    if @spree_case.update(spree_case_params)
      redirect_to @spree_case, notice: 'Case was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /spree/cases/1
  def destroy
    @spree_case.destroy
    redirect_to spree_cases_url, notice: 'Case was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spree_case
      @spree_case = Spree::Case.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def spree_case_params
      params[:spree_case]
    end
end
  end
end

