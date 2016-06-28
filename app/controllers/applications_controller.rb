class ApplicationsController < ApplicationController
   before_action :find_job
   before_action :set_application, only: [:show, :edit, :update, :destroy]

  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:application_id])
    #@application = @job.applications.find(params[:id])
  end

  #def new
    #@job = Job.find(params[:job_id])
    #@user = User.find(params[:user_id])
    #@application = Application.new
  #end

  def edit
  end

  def create
    @application = Application.new(application_params)
    @application.job_id = @job.id
    @application.user_id = current_user.id
    @application.bprofile_id = current_user.bprofile.id
    if @application.save
       redirect_to @job, notice: 'Application was successfully updated.'
      else
          render notice: 'Application was not updated.'
    end
  end

  def update
    respond_to do |format|
      if @application.update(application_params)
        format.html { redirect_to @application, notice: 'Application was successfully updated.' }
        format.json { render :show, status: :ok, location: @application }
      else
        format.html { render :edit }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @application.destroy
    respond_to do |format|
      format.html { redirect_to applications_url, notice: 'Application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:application).permit(:attachment)
    end

    def find_job
      @job = Job.find(params[:job_id])
    end
end
