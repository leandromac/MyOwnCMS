class Panel::ServicesController < PanelController
  before_action :authenticate_user!
  before_action :set_panel_service, only: [:show, :edit, :update, :destroy]
  layout 'panel'

  # GET /panel/services
  # GET /panel/services.json
  def index
    @panel_services = Panel::Service.all
    @panel_service = Panel::Service.new
  end

  # GET /panel/services/1
  # GET /panel/services/1.json
  def show
  end

  # GET /panel/services/new
  def new
    @panel_service = Panel::Service.new
  end

  # GET /panel/services/1/edit
  def edit
    @panel_services = Panel::Service.all
  end

  # POST /panel/services
  # POST /panel/services.json
  def create
    @panel_service = Panel::Service.new(panel_service_params)

    respond_to do |format|
      if @panel_service.save
        format.html { redirect_to panel_services_path, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @panel_service }
      else
        format.html { render :new }
        format.json { render json: @panel_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /panel/services/1
  # PATCH/PUT /panel/services/1.json
  def update
    respond_to do |format|
      if @panel_service.update(panel_service_params)
        format.html { redirect_to panel_services_path, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @panel_service }
      else
        format.html { render :edit }
        format.json { render json: @panel_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panel/services/1
  # DELETE /panel/services/1.json
  def destroy
    @panel_service.destroy
    respond_to do |format|
      format.html { redirect_to panel_services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panel_service
      @panel_service = Panel::Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def panel_service_params
      params.require(:panel_service).permit(:image, :title, :description)
    end
end
