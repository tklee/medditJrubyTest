class ProcedureListsController < ApplicationController
  # GET /procedure_lists
  # GET /procedure_lists.json
  def index
    @procedure_lists = ProcedureList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @procedure_lists }
    end
  end

  # GET /procedure_lists/1
  # GET /procedure_lists/1.json
  def show
    @procedure_list = ProcedureList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @procedure_list }
    end
  end

  # GET /procedure_lists/new
  # GET /procedure_lists/new.json
  def new
    @procedure_list = ProcedureList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @procedure_list }
    end
  end

  # GET /procedure_lists/1/edit
  def edit
    @procedure_list = ProcedureList.find(params[:id])
  end

  # POST /procedure_lists
  # POST /procedure_lists.json
  def create
    @procedure_list = ProcedureList.new(params[:procedure_list])

    respond_to do |format|
      if @procedure_list.save
        format.html { redirect_to @procedure_list, notice: 'Procedure list was successfully created.' }
        format.json { render json: @procedure_list, status: :created, location: @procedure_list }
      else
        format.html { render action: "new" }
        format.json { render json: @procedure_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /procedure_lists/1
  # PUT /procedure_lists/1.json
  def update
    @procedure_list = ProcedureList.find(params[:id])

    respond_to do |format|
      if @procedure_list.update_attributes(params[:procedure_list])
        format.html { redirect_to @procedure_list, notice: 'Procedure list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @procedure_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procedure_lists/1
  # DELETE /procedure_lists/1.json
  def destroy
    @procedure_list = ProcedureList.find(params[:id])
    @procedure_list.destroy

    respond_to do |format|
      format.html { redirect_to procedure_lists_url }
      format.json { head :no_content }
    end
  end
end
