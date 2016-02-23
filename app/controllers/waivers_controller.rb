# == Schema Information
#
# Table name: waivers
#
#  id                      :integer          not null, primary key
#  first_name              :string(255)
#  last_name               :string(255)
#  waiver_class            :string(255)
#  replacement_class       :string(255)
#  taken_replacement_class :string(255)
#  comments                :text
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  email                   :string(255)
#  status                  :string(255)
#  course_id               :integer
#  timestamp               :datetime
#  documentation           :string(255)
#  course_taken_website    :string(255)
#  instructor_comments     :string(255)
#

class WaiversController < ApplicationController

# checks that admin is logged in
before_filter :check_admin_logged_in!, except: [:confirm, :new, :create,
  :show, :approve, :deny, :update_attribute, :update]

# checks that instructor is logged in
before_filter :check_user_logged_in!, only: [:show, :approve, :deny, :update_attribute, :update]

  # GET /waivers
  # GET /waivers.json

  helper_method :sort_column, :sort_direction

  def index
    @waivers = Waiver.order(sort_column + " " + sort_direction)

    if params[:search].present?
      @search = Waiver.search do
        fulltext params[:search]
      end
      @waivers = @search.results
    end

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
        format.html { redirect_to confirm_path(:id => @waiver.id), notice: 'Waiver was successfully created.' }
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
    WaiverMailer.waiver_denied_email(@waiver).deliver    
    redirect_to @waiver
  end

  def approve
    @waiver = Waiver.find(params[:id])
    @waiver.update_attribute(:status, "Approved")
    WaiverMailer.waiver_approved_email(@waiver).deliver 
    redirect_to @waiver
  end

  def confirm
    @waiver = Waiver.find(params[:id])
    WaiverMailer.confirmation_email(@waiver).deliver
    if @waiver.course.email_opt_in
      WaiverMailer.instructor_notification_email(@waiver).deliver
    end
  end

  def data
    @waivers = Waiver.all
    @courses = Course.all
  end
  

  private
    def sort_column
      Waiver.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
  
    def check_admin_logged_in! # admin must be logged in
        authenticate_admin!
    end

    def check_user_logged_in! # if admin is not logged in, instructor must be logged in
      if !admin_signed_in?
        authenticate_user!
      end   
    end
end
