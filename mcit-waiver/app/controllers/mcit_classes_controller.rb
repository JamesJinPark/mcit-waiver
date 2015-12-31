class McitClassesController < ApplicationController
  # GET /mcit_classes
  # GET /mcit_classes.json
  def index
    @mcit_classes = McitClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mcit_classes }
    end
  end

  # GET /mcit_classes/1
  # GET /mcit_classes/1.json
  def show
    @mcit_class = McitClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mcit_class }
    end
  end

  # GET /mcit_classes/new
  # GET /mcit_classes/new.json
  def new
    @mcit_class = McitClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mcit_class }
    end
  end

  # GET /mcit_classes/1/edit
  def edit
    @mcit_class = McitClass.find(params[:id])
  end

  # POST /mcit_classes
  # POST /mcit_classes.json
  def create
    @mcit_class = McitClass.new(params[:mcit_class])

    respond_to do |format|
      if @mcit_class.save
        format.html { redirect_to @mcit_class, notice: 'Mcit class was successfully created.' }
        format.json { render json: @mcit_class, status: :created, location: @mcit_class }
      else
        format.html { render action: "new" }
        format.json { render json: @mcit_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mcit_classes/1
  # PUT /mcit_classes/1.json
  def update
    @mcit_class = McitClass.find(params[:id])

    respond_to do |format|
      if @mcit_class.update_attributes(params[:mcit_class])
        format.html { redirect_to @mcit_class, notice: 'Mcit class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mcit_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mcit_classes/1
  # DELETE /mcit_classes/1.json
  def destroy
    @mcit_class = McitClass.find(params[:id])
    @mcit_class.destroy

    respond_to do |format|
      format.html { redirect_to mcit_classes_url }
      format.json { head :no_content }
    end
  end
end
