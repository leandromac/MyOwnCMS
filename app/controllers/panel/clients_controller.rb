class Panel::ClientsController < PanelController
  before_action :set_panel_client, only: [:show, :edit, :update, :destroy]
  before_action :panel_custom, only: [:index, :edit, :update]

  # GET /panel/clients
  # GET /panel/clients.json
  def index
    @panel_clients = Panel::Client.all
    @panel_client = Panel::Client.new
  end

  # GET /panel/clients/1
  # GET /panel/clients/1.json
  def show
  end

  # GET /panel/clients/new
  def new
    @panel_client = Panel::Client.new
  end

  # GET /panel/clients/1/edit
  def edit
    @panel_clients = Panel::Client.all
  end

  # POST /panel/clients
  # POST /panel/clients.json
  def create
    @panel_client = Panel::Client.new(panel_client_params)

    respond_to do |format|
      if @panel_client.save
        format.html { redirect_to panel_clients_path, notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @panel_client }
      else
        format.html { render :new }
        format.json { render json: @panel_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /panel/clients/1
  # PATCH/PUT /panel/clients/1.json
  def update
    respond_to do |format|
      if @panel_client.update(panel_client_params)
        format.html { redirect_to panel_clients_path, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @panel_client }
      else
        format.html { render :edit }
        format.json { render json: @panel_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panel/clients/1
  # DELETE /panel/clients/1.json
  def destroy
    @panel_client.destroy
    respond_to do |format|
      format.html { redirect_to panel_clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def panel_custom
    @panel_customs = Panel::Custom.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panel_client
      @panel_client = Panel::Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def panel_client_params
      params.require(:panel_client).permit(:image, :link)
    end
end
