class InvitesController < ApplicationController
  before_action :set_invite, only: [:show, :edit, :update, :destroy]
  # GET /invites
  # GET /invites.json
  def index
    @invites_yi_lan = Invite.where(location: '0')
    @invites_Kaohsiung = Invite.where(location: '1')
  end

  # GET /invites/1
  # GET /invites/1.json
  def show
  end

  # GET /invites/new
  def new
    @invite = Invite.new
  end

  # GET /invites/1/edit
  def edit
  end

  # POST /invites
  # POST /invites.json
  def create
    @invite = Invite.new(invite_params)
    @invite.ip = request.remote_ip
  
    respond_to do |format|
      if @invite.save
      
        format.html #{ redirect_to @invite, notice: 'Invite was successfully created.' }
        format.js #{ render :show, status: :created, location: @invite }
      else
        #format.html { render :new }
        format.js #{ render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invites/1
  # PATCH/PUT /invites/1.json
  def update
    respond_to do |format|
      if @invite.update(invite_params)
        format.html { redirect_to @invite, notice: 'Invite was successfully updated.' }
        format.json { render :show, status: :ok, location: @invite }
      else
        format.html { render :edit }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invites/1
  # DELETE /invites/1.json
  def destroy
    @invite.destroy
    respond_to do |format|
      format.html { redirect_to admin_invites_path, notice: 'Invite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invite
      @invite = Invite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invite_params
      params.require(:invite).permit(:name, :email, :phone, :address, :company, :location, :isVeg, :zipcode, :category)
    end

end
