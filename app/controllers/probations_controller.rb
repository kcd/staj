class ProbationsController < ApplicationController
  # GET /probations
  # GET /probations.json
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index
    @probations = Probation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @probations }
    end
  end

  # GET /probations/1
  # GET /probations/1.json
  def show
    @probation = Probation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @probation }
    end
  end

  # GET /probations/new
  # GET /probations/new.json
  def new
    @probation = Probation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @probation }
    end
  end

  # GET /probations/1/edit
  def edit
    @probation = Probation.find(params[:id])
  end

  # POST /probations
  # POST /probations.json
  def create
    @probation = Probation.new(params[:probation])
    @probation.user = current_user
    respond_to do |format|
      if @probation.save
        format.html { redirect_to institution_index_path, notice: 'Probation was successfully created.' }
        format.json { render json: @probation, status: :created, location: @probation }
      else
        format.html { render action: "new" }
        format.json { render json: @probation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /probations/1
  # PUT /probations/1.json
  def update
    @probation = Probation.find(params[:id])
    @probation.user = current_user
    respond_to do |format|
      if @probation.update_attributes(params[:probation])
        format.html { redirect_to institution_proselects_path, notice: 'Probation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @probation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /probations/1
  # DELETE /probations/1.json
  def destroy
    @probation = Probation.find(params[:id])
    @probation.destroy

    respond_to do |format|
      format.html { redirect_to institution_proselects_path }
      format.json { head :no_content }
    end
  end
end
