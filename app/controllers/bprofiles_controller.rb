class BprofilesController < ApplicationController
  
  before_action :set_bprofile, only: [:show, :edit, :update, :destroy]

  # GET /bprofiles
  # GET /bprofiles.json
  def index
    @bprofiles = Bprofile.all
  end

  # GET /bprofiles/1
  # GET /bprofiles/1.json
  def show
   
  end

  # GET /bprofiles/new
  def new
    @bprofile = Bprofile.new
  end

  # GET /bprofiles/1/edit
  def edit
  end

  # POST /bprofiles
  # POST /bprofiles.json
  def create
    @bprofile = Bprofile.new(bprofile_params)
    @bprofile.user_id = current_user.id # assign the bprofile to the user who created it.

    respond_to do |format|
       if (@bprofile.save) 
                format.html { redirect_to "", notice: "Company Profile created!" }
            else
                format.html { redirect_to "", notice: "Error: Company Profile Not Saved." }
       end
    end
  end

  # PATCH/PUT /bprofiles/1
  # PATCH/PUT /bprofiles/1.json
  def update
    respond_to do |format|
      if @bprofile.update(bprofile_params)
        format.html { redirect_to @bprofile, notice: 'Bprofile was successfully updated.' }
        format.json { render :show, status: :ok, location: @bprofile }
      else
        format.html { render :edit }
        format.json { render json: @bprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bprofiles/1
  # DELETE /bprofiles/1.json
  def destroy
    @bprofile.destroy
    respond_to do |format|
      format.html { redirect_to bprofiles_url, notice: 'Bprofile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

 
  
  private

    # Use callbacks to share common setup or constraints between actions.
    def set_bprofile
      @bprofile = Bprofile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bprofile_params
      params.require(:bprofile).permit(:user_id, :name, :summary, :copmpany_type, :number_of_employes, :industry)
    end
end
