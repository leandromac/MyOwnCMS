class Panel::CustomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_panel_custom, only: [:show, :edit, :update]
  layout 'panel'

  # GET /panel/customs
  # GET /panel/customs.json
  def index
    @panel_customs = Panel::Custom.all
  end

  # GET /panel/customs/1
  # GET /panel/customs/1.json
  def show
  end

  # GET /panel/customs/new
  def new
    @panel_custom = Panel::Custom.new
  end

  # GET /panel/customs/1/edit
  def edit
  end

  # POST /panel/customs
  # POST /panel/customs.json
  def create
    @panel_custom = Panel::Custom.new(panel_custom_params)

    respond_to do |format|
      if @panel_custom.save
        format.html { redirect_to edit_panel_custom_path(1), notice: 'Custom was successfully created.' }
        format.json { render :show, status: :created, location: @panel_custom }
      else
        format.html { render :new }
        format.json { render json: @panel_custom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /panel/customs/1
  # PATCH/PUT /panel/customs/1.json
  def update
    respond_to do |format|
      if @panel_custom.update(panel_custom_params)
        format.html { redirect_to edit_panel_custom_path(1), notice: 'Custom was successfully updated.' }
        format.json { render :show, status: :ok, location: @panel_custom }
      else
        format.html { render :edit }
        format.json { render json: @panel_custom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panel/customs/1
  # DELETE /panel/customs/1.json
  def destroy
    @panel_custom.destroy
    respond_to do |format|
      format.html { redirect_to panel_customs_url, notice: 'Custom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panel_custom
      @panel_custom = Panel::Custom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def panel_custom_params
      params.require(:panel_custom).permit(:name, :logo, :phone, :email, :address, :about, :facebook, :twitter, :instagram, :youtube, :linkedin, :text_contact, :footer_title, :footer_text)
    end
end
