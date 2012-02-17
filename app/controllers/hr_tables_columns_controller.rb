class HrTablesColumnsController < ApplicationController
  # GET /hr_tables_columns
  # GET /hr_tables_columns.json
  def index
    @hr_tables_columns = HrTablesColumn.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hr_tables_columns }
    end
  end

  # GET /hr_tables_columns/1
  # GET /hr_tables_columns/1.json
  def show
    @hr_tables_column = HrTablesColumn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hr_tables_column }
    end
  end

  # GET /hr_tables_columns/new
  # GET /hr_tables_columns/new.json
  def new
    @hr_tables_column = HrTablesColumn.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hr_tables_column }
    end
  end

  # GET /hr_tables_columns/1/edit
  def edit
    @hr_tables_column = HrTablesColumn.find(params[:id])
  end

  # POST /hr_tables_columns
  # POST /hr_tables_columns.json
  def create
    @hr_tables_column = HrTablesColumn.new(params[:hr_tables_column])

    respond_to do |format|
      if @hr_tables_column.save
        format.html { redirect_to @hr_tables_column, notice: 'Hr tables column was successfully created.' }
        format.json { render json: @hr_tables_column, status: :created, location: @hr_tables_column }
      else
        format.html { render action: "new" }
        format.json { render json: @hr_tables_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hr_tables_columns/1
  # PUT /hr_tables_columns/1.json
  def update
    @hr_tables_column = HrTablesColumn.find(params[:id])

    respond_to do |format|
      if @hr_tables_column.update_attributes(params[:hr_tables_column])
        format.html { redirect_to @hr_tables_column, notice: 'Hr tables column was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hr_tables_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr_tables_columns/1
  # DELETE /hr_tables_columns/1.json
  def destroy
    @hr_tables_column = HrTablesColumn.find(params[:id])
    @hr_tables_column.destroy

    respond_to do |format|
      format.html { redirect_to hr_tables_columns_url }
      format.json { head :no_content }
    end
  end
end
