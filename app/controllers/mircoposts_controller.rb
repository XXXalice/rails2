class MircopostsController < ApplicationController
  before_action :set_mircopost, only: [:show, :edit, :update, :destroy]

  # GET /mircoposts
  # GET /mircoposts.json
  def index
    @mircoposts = Mircopost.all
  end

  # GET /mircoposts/1
  # GET /mircoposts/1.json
  def show
  end

  # GET /mircoposts/new
  def new
    @mircopost = Mircopost.new
  end

  # GET /mircoposts/1/edit
  def edit
  end

  # POST /mircoposts
  # POST /mircoposts.json
  def create
    @mircopost = Mircopost.new(mircopost_params)

    respond_to do |format|
      if @mircopost.save
        format.html { redirect_to @mircopost, notice: 'Mircopost was successfully created.' }
        format.json { render :show, status: :created, location: @mircopost }
      else
        format.html { render :new }
        format.json { render json: @mircopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mircoposts/1
  # PATCH/PUT /mircoposts/1.json
  def update
    respond_to do |format|
      if @mircopost.update(mircopost_params)
        format.html { redirect_to @mircopost, notice: 'Mircopost was successfully updated.' }
        format.json { render :show, status: :ok, location: @mircopost }
      else
        format.html { render :edit }
        format.json { render json: @mircopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mircoposts/1
  # DELETE /mircoposts/1.json
  def destroy
    @mircopost.destroy
    respond_to do |format|
      format.html { redirect_to mircoposts_url, notice: 'Mircopost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mircopost
      @mircopost = Mircopost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mircopost_params
      params.require(:mircopost).permit(:content, :user_id)
    end
end
