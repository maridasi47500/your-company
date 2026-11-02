class LogindetailsController < ApplicationController
  before_action :set_logindetail, only: %i[ show edit update destroy ]

  # GET /logindetails or /logindetails.json
  def index
    @logindetails = Logindetail.all
  end

  # GET /logindetails/1 or /logindetails/1.json
  def show
  end

  # GET /logindetails/new
  def new
    @logindetail = Logindetail.new
  end

  # GET /logindetails/1/edit
  def edit
  end

  # POST /logindetails or /logindetails.json
  def create
    @logindetail = Logindetail.new(logindetail_params)

    respond_to do |format|
      if @logindetail.save
        format.html { redirect_to @logindetail, notice: "Logindetail was successfully created." }
        format.json { render :show, status: :created, location: @logindetail }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @logindetail.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /logindetails/1 or /logindetails/1.json
  def update
    respond_to do |format|
      if @logindetail.update(logindetail_params)
        format.html { redirect_to @logindetail, notice: "Logindetail was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @logindetail }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @logindetail.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /logindetails/1 or /logindetails/1.json
  def destroy
    @logindetail.destroy!

    respond_to do |format|
      format.html { redirect_to logindetails_path, notice: "Logindetail was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logindetail
      @logindetail = Logindetail.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def logindetail_params
      params.expect(logindetail: [ :email, :password ])
    end
end
