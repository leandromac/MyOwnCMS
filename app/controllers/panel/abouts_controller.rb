class Panel::AboutsController < PanelController
  before_action :authenticate_user!
  before_action :set_panel_about, only: [:show, :edit, :update, :destroy]
  before_action :panel_custom, only: [:edit, :update]
  
  # GET /panel/abouts
  # GET /panel/abouts.json
  def index
    @panel_abouts = Panel::About.all
  end

  # GET /panel/abouts/1
  # GET /panel/abouts/1.json
  def show
  end

  # GET /panel/abouts/new
  def new
    @panel_about = Panel::About.new
  end

  # GET /panel/abouts/1/edit
  def edit
    @panel_abouts = Panel::About.all
  end

  # POST /panel/abouts
  # POST /panel/abouts.json
  def create
    @panel_about = Panel::About.new(panel_about_params)

    respond_to do |format|
      if @panel_about.save
        format.html { redirect_to edit_panel_about_path(1), notice: 'About was successfully created.' }
        format.json { render :show, status: :created, location: @panel_about }
      else
        format.html { render :new }
        format.json { render json: @panel_about.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /panel/abouts/1
  # PATCH/PUT /panel/abouts/1.json
  def update
    respond_to do |format|
      if @panel_about.update(panel_about_params)
        format.html { redirect_to edit_panel_about_path(1), notice: 'About was successfully updated.' }
        format.json { render :show, status: :ok, location: @panel_about }
      else
        format.html { render :edit }
        format.json { render json: @panel_about.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panel/abouts/1
  # DELETE /panel/abouts/1.json
  def destroy
    @panel_about.destroy
    respond_to do |format|
      format.html { redirect_to panel_abouts_url, notice: 'About was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def panel_custom
    @panel_customs = Panel::Custom.all
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panel_about
      @panel_about = Panel::About.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def panel_about_params
      params.require(:panel_about).permit(:image, :title, :about, :blockquote)
    end
end
