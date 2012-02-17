class HrMastersController < ApplicationController
  # GET /hr_masters
  # GET /hr_masters.json
  def index
    @hr_masters = HrMaster.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hr_masters }
    end
  end

  # GET /hr_masters/1
  # GET /hr_masters/1.json
  def show
    @hr_master = HrMaster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hr_master }
    end
  end

  # GET /hr_masters/new
  # GET /hr_masters/new.json
  def new
    @hr_master = HrMaster.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hr_master }
    end
  end

  # GET /hr_masters/1/edit
  def edit
    @hr_master = HrMaster.find(params[:id])
  end

  # POST /hr_masters
  # POST /hr_masters.json
  def create
    @hr_master = HrMaster.new(params[:hr_master])

    respond_to do |format|
      if @hr_master.save
        format.html { redirect_to @hr_master, notice: 'Hr master was successfully created.' }
        format.json { render json: @hr_master, status: :created, location: @hr_master }
      else
        format.html { render action: "new" }
        format.json { render json: @hr_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hr_masters/1
  # PUT /hr_masters/1.json
  def update
    @hr_master = HrMaster.find(params[:id])

    respond_to do |format|
      if @hr_master.update_attributes(params[:hr_master])
        format.html { redirect_to @hr_master, notice: 'Hr master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hr_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr_masters/1
  # DELETE /hr_masters/1.json
  def destroy
    @hr_master = HrMaster.find(params[:id])
    @hr_master.destroy

    respond_to do |format|
      format.html { redirect_to hr_masters_url }
      format.json { head :no_content }
    end
  end
end
