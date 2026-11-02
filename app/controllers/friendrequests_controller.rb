class FriendrequestsController < ApplicationController
  before_action :set_friendrequest, only: %i[ show edit update destroy ]

  # GET /friendrequests or /friendrequests.json
  def index
    @friendrequests = Friendrequest.all
  end

  # GET /friendrequests/1 or /friendrequests/1.json
  def show
  end
  def youare
    @employee=Employee.find(params[:id])
    @friend=Employee.find(params[:employee_id])
    render "employees/mypage"
  end

  # GET /friendrequests/new
  def new
    @friendrequest = Friendrequest.new(employee_id: params[:employee_id])
    @employee=Employee.find(params[:employee_id])
  end
  

  # GET /friendrequests/1/edit
  def edit
  end

  # POST /friendrequests or /friendrequests.json
  def create
    @friendrequest = Friendrequest.new(friendrequest_params)

    respond_to do |format|
      if @friendrequest.save
        format.html { redirect_to  youare_friendrequests_path(@friendrequest.employee_id, employee_id: @friendrequest.friend_id), notice: "Friendrequest was successfully created." }
        format.json { render :show, status: :created, location: @friendrequest }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @friendrequest.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /friendrequests/1 or /friendrequests/1.json
  def update
    respond_to do |format|
      if @friendrequest.update(friendrequest_params)
        format.html { redirect_to @friendrequest, notice: "Friendrequest was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @friendrequest }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @friendrequest.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /friendrequests/1 or /friendrequests/1.json
  def destroy
    @friendrequest.destroy!

    respond_to do |format|
      format.html { redirect_to friendrequests_path, notice: "Friendrequest was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendrequest
      @friendrequest = Friendrequest.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def friendrequest_params
      params.expect(friendrequest: [ :employee_id, :friend_id ])
    end
end
