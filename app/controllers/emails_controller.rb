class EmailsController < ApplicationController
  before_action :set_email, only: %i[ show edit update destroy ]

  # GET /emails or /emails.json
  def index
    @emails = Email.all
  end

  # GET /emails/1 or /emails/1.json
  def antivirus
    session[:antivirus] = params[:myvalue].to_i
  end
  def wifi
    @x={}
    session[:wifi]=params[:myid].to_i
    render json: @x, layout: false
  end
  def download
    @x={}
    render json: @x, layout: false
  end
  def show
    @uupdate=Uupdate.new
    @uupdate.email_id=@email.id
    @uupdate.schedulenow=1
  end

  # GET /emails/new
  def new
    @email = Email.new
  end

  # GET /emails/1/edit
  def edit
    if params[:bcc]=="true"
      @email.bccemployee_ids=Employee.all.ids
    end
    if params[:cc]=="true"
      @email.ccemployee_ids=Employee.all.ids
    end
  end

  # POST /emails or /emails.json
  def create
    @email = Email.new(email_params)

    respond_to do |format|
      if @email.save
        format.html { redirect_to @email, notice: "Email was successfully created." }
        format.json { render :show, status: :created, location: @email }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @email.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /emails/1 or /emails/1.json
  def update
    respond_to do |format|
      if @email.update(email_params)
        format.html { redirect_to @email, notice: "Email was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @email }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @email.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /emails/1 or /emails/1.json
  def destroy
    @email.destroy!

    respond_to do |format|
      format.html { redirect_to emails_path, notice: "Email was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email
      @email = Email.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def email_params
      params.expect(email: [ :from, :to, :subject, :content, :attachment, :ccemployee_ids =>[], :bccemployee_ids=>[] ])
    end
end
