class MycvsController < ApplicationController
  before_action :set_mycv, only: [:show, :edit, :update, :destroy]

  # GET /mycvs
  # GET /mycvs.json
  def index
    @mycvs = Mycv.all
  end

  # GET /mycvs/1
  # GET /mycvs/1.json
  def show
  end

  # GET /mycvs/new
  def new
    @mycv = Mycv.new
  end

  # GET /mycvs/1/edit
  def edit
  end

  # POST /mycvs
  # POST /mycvs.json
  def create
    @mycv = Mycv.new(mycv_params)

    respond_to do |format|
      if @mycv.save
        format.html { redirect_to @mycv, notice: 'Mycv was successfully created.' }
        format.json { render :show, status: :created, location: @mycv }
      else
        format.html { render :new }
        format.json { render json: @mycv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mycvs/1
  # PATCH/PUT /mycvs/1.json
  def update
    respond_to do |format|
      if @mycv.update(mycv_params)
        format.html { redirect_to @mycv, notice: 'Mycv was successfully updated.' }
        format.json { render :show, status: :ok, location: @mycv }
      else
        format.html { render :edit }
        format.json { render json: @mycv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mycvs/1
  # DELETE /mycvs/1.json
  def destroy
    @mycv.destroy
    respond_to do |format|
      format.html { redirect_to mycvs_url, notice: 'Mycv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mycv
      @mycv = Mycv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mycv_params
      params.fetch(:mycv, {})
    end
end
