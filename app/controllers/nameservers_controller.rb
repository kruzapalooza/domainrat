class NameserversController < ApplicationController
  before_action :set_nameserver, only: [:show, :edit, :update, :destroy]

  # GET /nameservers
  # GET /nameservers.json
  def index
    @nameservers = Nameserver.all
  end

  # GET /nameservers/1
  # GET /nameservers/1.json
  def show
  end

  # GET /nameservers/new
  def new
    @nameserver = Nameserver.new
  end

  # GET /nameservers/1/edit
  def edit
  end

  # POST /nameservers
  # POST /nameservers.json
  def create
    @nameserver = Nameserver.new(nameserver_params)

    respond_to do |format|
      if @nameserver.save
        format.html { redirect_to @nameserver, notice: 'Nameserver was successfully created.' }
        format.json { render :show, status: :created, location: @nameserver }
      else
        format.html { render :new }
        format.json { render json: @nameserver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nameservers/1
  # PATCH/PUT /nameservers/1.json
  def update
    respond_to do |format|
      if @nameserver.update(nameserver_params)
        format.html { redirect_to @nameserver, notice: 'Nameserver was successfully updated.' }
        format.json { render :show, status: :ok, location: @nameserver }
      else
        format.html { render :edit }
        format.json { render json: @nameserver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nameservers/1
  # DELETE /nameservers/1.json
  def destroy
    @nameserver.destroy
    respond_to do |format|
      format.html { redirect_to nameservers_url, notice: 'Nameserver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nameserver
      @nameserver = Nameserver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nameserver_params
      params[:nameserver]
    end
end
