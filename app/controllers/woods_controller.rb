class WoodsController < ApplicationController
  before_action :set_wood, only: [:show, :edit, :update, :destroy]

  # GET /woods
  # GET /woods.json
  def index
    @woods = Wood.all
  end

  # GET /woods/1
  # GET /woods/1.json
  def show
  end

  # GET /woods/new
  def new
    @wood = Wood.new
  end

  # GET /woods/1/edit
  def edit
  end

  # POST /woods
  # POST /woods.json
  def create
    @wood = Wood.new(wood_params)

    respond_to do |format|
      if @wood.save
        format.html { redirect_to @wood, notice: 'Wood was successfully created.' }
        format.json { render :show, status: :created, location: @wood }
      else
        format.html { render :new }
        format.json { render json: @wood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /woods/1
  # PATCH/PUT /woods/1.json
  def update
    respond_to do |format|
      if @wood.update(wood_params)
        format.html { redirect_to @wood, notice: 'Wood was successfully updated.' }
        format.json { render :show, status: :ok, location: @wood }
      else
        format.html { render :edit }
        format.json { render json: @wood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /woods/1
  # DELETE /woods/1.json
  def destroy
    @wood.destroy
    respond_to do |format|
      format.html { redirect_to woods_url, notice: 'Wood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wood
      @wood = Wood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wood_params
      params.require(:wood).permit(:nickname, :origin, :grade, :desity, :speed_of_sound, :modulus_of_elasticity, :radiation_coefficient)
    end
end
