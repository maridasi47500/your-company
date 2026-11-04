class BreachbuddiesController < ApplicationController
  before_action :set_breachbuddy, only: %i[ show edit update destroy ]

  # GET /breachbuddies or /breachbuddies.json
  def index
    @breachbuddies = Breachbuddy.all
  end

  # GET /breachbuddies/1 or /breachbuddies/1.json
  def show
  end

  # GET /breachbuddies/new
  def new
    @breachbuddy = Breachbuddy.new(name_associated: params[:from], device_type: "ubook", location: "london", serial_number: 8.times.map { [*'0'..'9', *'A'..'Z'].sample }.join)
  end

  # GET /breachbuddies/1/edit
  def edit
  end

  # POST /breachbuddies or /breachbuddies.json
  def create
    @breachbuddy = Breachbuddy.new(breachbuddy_params)

    respond_to do |format|
      if @breachbuddy.save
        format.html { redirect_to @breachbuddy, notice: "Breachbuddy was successfully created." }
        format.json { render :show, status: :created, location: @breachbuddy }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @breachbuddy.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /breachbuddies/1 or /breachbuddies/1.json
  def update
    respond_to do |format|
      if @breachbuddy.update(breachbuddy_params)
        format.html { redirect_to @breachbuddy, notice: "Breachbuddy was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @breachbuddy }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @breachbuddy.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /breachbuddies/1 or /breachbuddies/1.json
  def destroy
    @breachbuddy.destroy!

    respond_to do |format|
      format.html { redirect_to breachbuddies_path, notice: "Breachbuddy was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breachbuddy
      @breachbuddy = Breachbuddy.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def breachbuddy_params
      params.expect(breachbuddy: [ :device_type, :name_associated, :serial_number, :location ])
    end
end
