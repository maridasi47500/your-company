class CompanymessagesController < ApplicationController
  before_action :set_companymessage, only: %i[ show edit update destroy ]

  # GET /companymessages or /companymessages.json
  def index
    @companymessages = Companymessage.all
  end

  # GET /companymessages/1 or /companymessages/1.json
  def show
  end

  # GET /companymessages/new
  def new
    @companymessage = Companymessage.new
  end

  # GET /companymessages/1/edit
  def edit
  end

  # POST /companymessages or /companymessages.json
  def create
    @companymessage = Companymessage.new(companymessage_params)

    respond_to do |format|
      if @companymessage.save
        format.html { redirect_to @companymessage.company, notice: "Companymessage was successfully created." }
        format.json { render :show, status: :created, location: @companymessage }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @companymessage.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /companymessages/1 or /companymessages/1.json
  def update
    respond_to do |format|
      if @companymessage.update(companymessage_params)
        format.html { redirect_to @companymessage, notice: "Companymessage was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @companymessage }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @companymessage.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /companymessages/1 or /companymessages/1.json
  def destroy
    @companymessage.destroy!

    respond_to do |format|
      format.html { redirect_to companymessages_path, notice: "Companymessage was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companymessage
      @companymessage = Companymessage.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def companymessage_params
      params.expect(companymessage: [ :company_id, :employee_id, :content, :pic ])
    end
end
