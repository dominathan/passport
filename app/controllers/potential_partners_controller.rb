class PotentialPartnersController < ApplicationController
  before_action :set_potential_partner, only: [:show, :edit, :update, :destroy]

  # GET /potential_partners
  # GET /potential_partners.json
  def index
    @potential_partners = PotentialPartner.all
  end

  # GET /potential_partners/1
  # GET /potential_partners/1.json
  def show
  end

  # GET /potential_partners/new
  def new
    @potential_partner = PotentialPartner.new
  end

  # GET /potential_partners/1/edit
  def edit
  end

  # POST /potential_partners
  # POST /potential_partners.json
  def create
    @potential_partner = PotentialPartner.new(potential_partner_params)

    respond_to do |format|
      if @potential_partner.save
        format.html { redirect_to @potential_partner, notice: 'Potential partner was successfully created.' }
        format.json { render :show, status: :created, location: @potential_partner }
      else
        format.html { render :new }
        format.json { render json: @potential_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potential_partners/1
  # PATCH/PUT /potential_partners/1.json
  def update
    respond_to do |format|
      if @potential_partner.update(potential_partner_params)
        format.html { redirect_to @potential_partner, notice: 'Potential partner was successfully updated.' }
        format.json { render :show, status: :ok, location: @potential_partner }
      else
        format.html { render :edit }
        format.json { render json: @potential_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potential_partners/1
  # DELETE /potential_partners/1.json
  def destroy
    @potential_partner.destroy
    respond_to do |format|
      format.html { redirect_to potential_partners_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potential_partner
      @potential_partner = PotentialPartner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def potential_partner_params
      params.require(:potential_partner).permit(:studio_name, :person_to_contact, :contact_number, :email, :web_address, :how_did_you_hear_partner)
    end
end
