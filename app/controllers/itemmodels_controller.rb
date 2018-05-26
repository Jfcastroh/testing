class ItemmodelsController < ApplicationController
  before_action :set_itemmodel, only: [:show, :edit, :update, :destroy]

  # GET /itemmodels
  # GET /itemmodels.json
  def index
    @itemmodels = Itemmodel.all
  end

  # GET /itemmodels/1
  # GET /itemmodels/1.json
  def show
  end

  # GET /itemmodels/new
  def new
    @itemmodel = Itemmodel.new
  end

  # GET /itemmodels/1/edit
  def edit
  end

  # POST /itemmodels
  # POST /itemmodels.json
  def create
    @itemmodel = Itemmodel.new(itemmodel_params)

    respond_to do |format|
      if @itemmodel.save
        format.html { redirect_to @itemmodel, notice: 'Itemmodel was successfully created.' }
        format.json { render :show, status: :created, location: @itemmodel }
      else
        format.html { render :new }
        format.json { render json: @itemmodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itemmodels/1
  # PATCH/PUT /itemmodels/1.json
  def update
    respond_to do |format|
      if @itemmodel.update(itemmodel_params)
        format.html { redirect_to @itemmodel, notice: 'Itemmodel was successfully updated.' }
        format.json { render :show, status: :ok, location: @itemmodel }
      else
        format.html { render :edit }
        format.json { render json: @itemmodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itemmodels/1
  # DELETE /itemmodels/1.json
  def destroy
    @itemmodel.destroy
    respond_to do |format|
      format.html { redirect_to itemmodels_url, notice: 'Itemmodel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itemmodel
      @itemmodel = Itemmodel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itemmodel_params
      params.require(:itemmodel).permit(:category, :name)
    end
end
