class HrTablesController < ApplicationController
  # GET /hr_tables
  # GET /hr_tables.json
  def index
    @hr_tables = HrTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hr_tables }
    end
  end

  # GET /hr_tables/1
  # GET /hr_tables/1.json
  def show
    @hr_table = HrTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hr_table }
    end
  end

  # GET /hr_tables/new
  # GET /hr_tables/new.json
  def new
    @hr_table = HrTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hr_table }
    end
  end

  # GET /hr_tables/1/edit
  def edit
    @hr_table = HrTable.find(params[:id])
  end

  # POST /hr_tables
  # POST /hr_tables.json
  def create
    @hr_table = HrTable.new(params[:hr_table])

    respond_to do |format|
      if @hr_table.save
        format.html { redirect_to @hr_table, notice: 'Hr table was successfully created.' }
        format.json { render json: @hr_table, status: :created, location: @hr_table }
      else
        format.html { render action: "new" }
        format.json { render json: @hr_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hr_tables/1
  # PUT /hr_tables/1.json
  def update
    @hr_table = HrTable.find(params[:id])

    respond_to do |format|
      if @hr_table.update_attributes(params[:hr_table])
        format.html { redirect_to @hr_table, notice: 'Hr table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hr_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr_tables/1
  # DELETE /hr_tables/1.json
  def destroy
    @hr_table = HrTable.find(params[:id])
    @hr_table.destroy

    respond_to do |format|
      format.html { redirect_to hr_tables_url }
      format.json { head :no_content }
    end
  end
end
