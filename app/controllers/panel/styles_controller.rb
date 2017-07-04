class Panel::StylesController < ApplicationController
  before_action :set_panel_style, only: [:show, :edit, :update, :destroy]
  layout 'panel'
  # GET /panel/styles
  # GET /panel/styles.json
  def index
    @panel_styles = Panel::Style.all
  end

  # GET /panel/styles/1
  # GET /panel/styles/1.json
  def show
  end

  # GET /panel/styles/new
  def new
    @panel_style = Panel::Style.new
  end

  # GET /panel/styles/1/edit
  def edit

  end

  # POST /panel/styles
  # POST /panel/styles.json
  def create
    @panel_style = Panel::Style.new(panel_style_params)

    respond_to do |format|
      if @panel_style.save
        format.html { redirect_to edit_panel_style_path(1), notice: 'Style was successfully created.' }
        format.json { render :show, status: :created, location: @panel_style }
      else
        format.html { render :new }
        format.json { render json: @panel_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /panel/styles/1
  # PATCH/PUT /panel/styles/1.json
  def update
    respond_to do |format|
      if @panel_style.update(panel_style_params)
        format.html { redirect_to edit_panel_style_path(1), notice: 'Style was successfully updated.' }
        format.json { render :show, status: :ok, location: @panel_style }
      else
        format.html { render :edit }
        format.json { render json: @panel_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panel/styles/1
  # DELETE /panel/styles/1.json
  def destroy
    @panel_style.destroy
    respond_to do |format|
      format.html { redirect_to panel_styles_url, notice: 'Style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panel_style
      @panel_style = Panel::Style.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def panel_style_params
      params.require(:panel_style).permit(:nav_color, :footer_color, :a_color, :a_hover_color, :menu_color, :menu_hover_color, :nav_text_color, :footer_text_color, :custom_css)
    end
end
