class TssksController < ApplicationController
  before_action :set_tssk, only: [:show, :edit, :update, :destroy]

  # GET /tssks
  # GET /tssks.json
  def index
    @tssks = Tssk.all
  end

  # GET /tssks/1
  # GET /tssks/1.json
  def show
  end

  # GET /tssks/new
  def new
    @tssk = Tssk.new
  end

  # GET /tssks/1/edit
  def edit
  end

  # POST /tssks
  # POST /tssks.json
  def create
    @tssk = Tssk.new(tssk_params)

    respond_to do |format|
      if @tssk.save
        format.html { redirect_to @tssk, notice: 'Tssk was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tssk }
      else
        format.html { render action: 'new' }
        format.json { render json: @tssk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tssks/1
  # PATCH/PUT /tssks/1.json
  def update
    respond_to do |format|
      if @tssk.update(tssk_params)
        format.html { redirect_to @tssk, notice: 'Tssk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tssk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tssks/1
  # DELETE /tssks/1.json
  def destroy
    @tssk.destroy
    respond_to do |format|
      format.html { redirect_to tssks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tssk
      @tssk = Tssk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tssk_params
      params.require(:tssk).permit(:title, :detail)
    end
end
