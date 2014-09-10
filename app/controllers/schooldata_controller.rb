class SchooldataController < ApplicationController
  before_action :set_schooldatum, only: [:show, :edit, :update, :destroy]
def homepage
  
end
  # GET /schooldata
  # GET /schooldata.json
  def index
    @schooldata = Schooldatum.all
  end

  #  GET /schooldata/1
  #  GET /schooldata/1.json
  def show
  end

  # GET /schooldata/new
  def new
    @schooldatum = Schooldatum.new
  end

  # GET /schooldata/1/edit
  def edit
  end

  # POST /schooldata
  # POST /schooldata.json
  def create
    @schooldatum = Schooldatum.new(schooldatum_params)

    respond_to do |format|
      if @schooldatum.save
        format.html { redirect_to @schooldatum, notice: 'Schooldatum was successfully created.' }
        format.json { render :show, status: :created, location: @schooldatum }
      else
        format.html { render :new }
        format.json { render json: @schooldatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schooldata/1
  # PATCH/PUT /schooldata/1.json
  def update
    respond_to do |format|
      if @schooldatum.update(schooldatum_params)
        format.html { redirect_to @schooldatum, notice: 'Schooldatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @schooldatum }
      else
        format.html { render :edit }
        format.json { render json: @schooldatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schooldata/1
  # DELETE /schooldata/1.json
  def destroy
    @schooldatum.destroy
    respond_to do |format|
      format.html { redirect_to schooldata_url, notice: 'Schooldatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schooldatum
      @schooldatum = Schooldatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schooldatum_params
      params.require(:schooldatum).permit(:Schoolcode,:test, :schoolname, :branchname, :fromstd, :tostd, :boardcode, :registerunder, :schoolownershiptype, :yearofestb, :website, :email, :phone, :pictlink, :isactive)
    end
end
