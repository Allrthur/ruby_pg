class RitualsController < ApplicationController
  before_action :set_ritual, only: %i[ show edit update destroy ]

  # GET /rituals or /rituals.json
  def index
    @rituals = Ritual.all
  end

  # GET /rituals/1 or /rituals/1.json
  def show
  end

  # GET /rituals/new
  def new
    @ritual = Ritual.new
  end

  # GET /rituals/1/edit
  def edit
  end

  # POST /rituals or /rituals.json
  def create
    @ritual = Ritual.new(ritual_params)

    respond_to do |format|
      if @ritual.save
        format.html { redirect_to ritual_url(@ritual), notice: "Ritual was successfully created." }
        format.json { render :show, status: :created, location: @ritual }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ritual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rituals/1 or /rituals/1.json
  def update
    respond_to do |format|
      if @ritual.update(ritual_params)
        format.html { redirect_to ritual_url(@ritual), notice: "Ritual was successfully updated." }
        format.json { render :show, status: :ok, location: @ritual }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ritual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rituals/1 or /rituals/1.json
  def destroy
    @ritual.destroy

    respond_to do |format|
      format.html { redirect_to rituals_url, notice: "Ritual was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ritual
      @ritual = Ritual.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ritual_params
      params.require(:ritual).permit(:title, :description)
    end
end
