class WaiversController < ApplicationController

  before_filter :authenticate_admin!, except: [:new, :create]

  # GET /waivers
  # GET /waivers.json

  helper_method :sort_column, :sort_direction

  def index
    @waivers = Waiver.order(sort_column + " " + sort_direction)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @waivers }
    end
  end

  # GET /waivers/1
  # GET /waivers/1.json
  def show
    @waiver = Waiver.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @waiver }
    end
  end

  # GET /waivers/new
  # GET /waivers/new.json
  def new
    @waiver = Waiver.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @waiver }
    end
  end

  # GET /waivers/1/edit
  def edit
    @waiver = Waiver.find(params[:id])
  end

  # POST /waivers
  # POST /waivers.json
  def create
    @waiver = Waiver.new(params[:waiver])

    respond_to do |format|
      if @waiver.save
        format.html { redirect_to @waiver, notice: 'Waiver was successfully created.' }
        format.json { render json: @waiver, status: :created, location: @waiver }
      else
        format.html { render action: "new" }
        format.json { render json: @waiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /waivers/1
  # PUT /waivers/1.json
  def update
    @waiver = Waiver.find(params[:id])

    respond_to do |format|
      if @waiver.update_attributes(params[:waiver])
        format.html { redirect_to @waiver, notice: 'Waiver was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @waiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waivers/1
  # DELETE /waivers/1.json
  def destroy
    @waiver = Waiver.find(params[:id])
    @waiver.destroy

    respond_to do |format|
      format.html { redirect_to waivers_url }
      format.json { head :no_content }
    end
  end

  def deny
    @waiver = Waiver.find(params[:id])
    @waiver.update_attribute(:status, "Denied")
    redirect_to @waiver
  end

  def approve
    @waiver = Waiver.find(params[:id])
    @waiver.update_attribute(:status, "Approved")
    redirect_to @waiver
  end

  private
  def sort_column
    Waiver.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
  
end
