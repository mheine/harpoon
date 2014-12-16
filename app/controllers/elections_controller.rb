class ElectionsController < ApplicationController
  before_action :set_election, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /elections
  # GET /elections.json
  def index
    @elections = Election.all
  end

  # GET /elections/1
  # GET /elections/1.json
  def show
  end

  # GET /elections/new
  def new
    @election = Election.new
  end

  # GET /elections/1/edit
  def edit
  end

  # POST /elections
  # POST /elections.json
  def create
    @election = Election.new(election_params)
    @election.save
    respond_with @election
  end

  # PATCH/PUT /elections/1
  # PATCH/PUT /elections/1.json
  def update
    @election.update(election_params)
    respond_with(@election)
  end

  # DELETE /elections/1
  # DELETE /elections/1.json
  def destroy
    @election.destroy
    respond_to do |format|
      format.html { redirect_to elections_url, notice: 'Election was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_election
      @election = Election.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def election_params
      params.require(:election).permit(:name, :occurs_on, :published_on, :description)
    end
end
