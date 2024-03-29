class AuthoritiesController < ApplicationController
  before_action :set_authority, only: %i[ show edit update destroy ]

  # GET /authorities or /authorities.json
  def index
    @authorities = Authority.all
  end

  # GET /authorities/1 or /authorities/1.json
  def show
  end

  # GET /authorities/new
  def new
    @authority = Authority.new
    @authority.region_id= session[:last_region_id]
  end

  # GET /authorities/1/edit
  def edit
  end

  # POST /authorities or /authorities.json
  def create
    @authority = Authority.new(authority_params)

    respond_to do |format|
      if @authority.save
        session[:last_authority_id] = @authority.id
        format.html { redirect_to authority_url(@authority), notice: "Authority was successfully created." }
        format.json { render :show, status: :created, location: @authority }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authority.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorities/1 or /authorities/1.json
  def update
    respond_to do |format|
      if @authority.update(authority_params)
        session[:last_authority_id] = @authority.id
        format.html { redirect_to authority_url(@authority), notice: "Authority was successfully updated." }
        format.json { render :show, status: :ok, location: @authority }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authority.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorities/1 or /authorities/1.json
  def destroy
    @authority.destroy

    respond_to do |format|
      format.html { redirect_to authorities_url, notice: "Authority was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authority
      @authority = Authority.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authority_params
      params.fetch(:authority, {}).permit(:name, :region_id)
    end
end
