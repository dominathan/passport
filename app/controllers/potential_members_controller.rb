class PotentialMembersController < ApplicationController
  before_action :set_potential_member, only: [:show, :edit, :update, :destroy]
  include BootstrapFlashHelper

  # GET /potential_members
  # GET /potential_members.json
  def index
    @potential_members = PotentialMember.all
  end

  # GET /potential_members/1
  # GET /potential_members/1.json
  def show
  end

  # GET /potential_members/new
  def new
    @potential_member = PotentialMember.new
  end

  # GET /potential_members/1/edit
  def edit
  end

  # POST /potential_members
  # POST /potential_members.json
  def create
    @potential_member = PotentialMember.new(potential_member_params)

    respond_to do |format|
      if @potential_member.save
        Notifier.subscription_confirmation(@potential_member).deliver
        #flash[:success] = "You should receive an email shortly!" will add back in with tests
        format.html { redirect_to @potential_member, notice: 'Potential member was successfully created.' }
        format.json { render :show, status: :created, location: @potential_member }
      else
        format.html { render :new }
        format.json { render json: @potential_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potential_members/1
  # PATCH/PUT /potential_members/1.json
  def update
    respond_to do |format|
      if @potential_member.update(potential_member_params)
        format.html { redirect_to @potential_member, notice: 'Potential member was successfully updated.' }
        format.json { render :show, status: :ok, location: @potential_member }
      else
        format.html { render :edit }
        format.json { render json: @potential_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potential_members/1
  # DELETE /potential_members/1.json
  def destroy
    @potential_member.destroy
    respond_to do |format|
      format.html { redirect_to potential_members_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potential_member
      @potential_member = PotentialMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def potential_member_params
      params.require(:potential_member).permit(:first_name, :last_name, :email, :zip_code)
    end
end
