class ActressesController < ApplicationController
  before_action :set_actress, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /actresses
  # GET /actresses.json
  def index
    @actresses = Actress.all
  end

  # GET /actresses/1
  # GET /actresses/1.json
  def show
     @actress = Actress.find(params[:id])
  end

  # GET /actresses/new
  def new
    @actress = Actress.new
  end

  # GET /actresses/1/edit
  def edit
  end

  # POST /actresses
  # POST /actresses.json
  def create
    @actress = Actress.new(actress_params)

    respond_to do |format|
      if @actress.save
        format.html { redirect_to @actress, notice: 'Actress was successfully created.' }
        format.json { render :show, status: :created, location: @actress }
      else
        format.html { render :new }
        format.json { render json: @actress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actresses/1
  # PATCH/PUT /actresses/1.json
  def update
    respond_to do |format|
      if @actress.update(actress_params)
        format.html { redirect_to @actress, notice: 'Actress was successfully updated.' }
        format.json { render :show, status: :ok, location: @actress }
      else
        format.html { render :edit }
        format.json { render json: @actress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actresses/1
  # DELETE /actresses/1.json
  def destroy
    @actress.destroy
    respond_to do |format|
      format.html { redirect_to actresses_url, notice: 'Actress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actress
      @actress = Actress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actress_params
      params.require(:actress).permit(:name, :image)
    end
end
