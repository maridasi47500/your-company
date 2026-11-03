class WifiNetworksController < ApplicationController
  before_action :set_wifi_network, only: %i[ show edit update destroy ]

  # GET /wifi_networks or /wifi_networks.json
  def index
    @wifi_networks = WifiNetwork.all
  end

  # GET /wifi_networks/1 or /wifi_networks/1.json
  def show
  end

  # GET /wifi_networks/new
  def new
    @wifi_network = WifiNetwork.new
  end

  # GET /wifi_networks/1/edit
  def edit
  end

  # POST /wifi_networks or /wifi_networks.json
  def create
    @wifi_network = WifiNetwork.new(wifi_network_params)

    respond_to do |format|
      if @wifi_network.save
        format.html { redirect_to @wifi_network, notice: "Wifi network was successfully created." }
        format.json { render :show, status: :created, location: @wifi_network }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @wifi_network.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /wifi_networks/1 or /wifi_networks/1.json
  def update
    respond_to do |format|
      if @wifi_network.update(wifi_network_params)
        format.html { redirect_to @wifi_network, notice: "Wifi network was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @wifi_network }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @wifi_network.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /wifi_networks/1 or /wifi_networks/1.json
  def destroy
    @wifi_network.destroy!

    respond_to do |format|
      format.html { redirect_to wifi_networks_path, notice: "Wifi network was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wifi_network
      @wifi_network = WifiNetwork.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def wifi_network_params
      params.expect(wifi_network: [ :ssid, :password, :firmware_updates ])
    end
end
