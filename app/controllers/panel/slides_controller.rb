class Panel::SlidesController < PanelController
  before_action :set_panel_slide, only: [:show, :edit, :update, :destroy]
  before_action :panel_custom, only: [:index, :edit, :update]
  # GET /panel/slides
  # GET /panel/slides.json
  def index
    @panel_slides = Panel::Slide.all
    @panel_slide = Panel::Slide.new
  end

  # GET /panel/slides/1
  # GET /panel/slides/1.json
  def show
  end

  # GET /panel/slides/new
  def new
    @panel_slide = Panel::Slide.new
  end

  # GET /panel/slides/1/edit
  def edit
    @panel_slides = Panel::Slide.all
  end

  # POST /panel/slides
  # POST /panel/slides.json
  def create
    @panel_slide = Panel::Slide.new(panel_slide_params)

    respond_to do |format|
      if @panel_slide.save
        format.html { redirect_to panel_slides_path, notice: 'Slide was successfully created.' }
        format.json { render :show, status: :created, location: @panel_slide }
      else
        format.html { render :new }
        format.json { render json: @panel_slide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /panel/slides/1
  # PATCH/PUT /panel/slides/1.json
  def update
    respond_to do |format|
      if @panel_slide.update(panel_slide_params)
        format.html { redirect_to panel_slides_path, notice: 'Slide was successfully updated.' }
        format.json { render :show, status: :ok, location: @panel_slide }
      else
        format.html { render :edit }
        format.json { render json: @panel_slide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panel/slides/1
  # DELETE /panel/slides/1.json
  def destroy
    @panel_slide.destroy
    respond_to do |format|
      format.html { redirect_to panel_slides_url, notice: 'Slide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def panel_custom
    @panel_customs = Panel::Custom.all  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panel_slide
      @panel_slide = Panel::Slide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def panel_slide_params
      params.require(:panel_slide).permit(:link, :image, :title, :description)
    end
end
