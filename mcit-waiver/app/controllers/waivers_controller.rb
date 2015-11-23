class WaiversController < ApplicationController
  def index
  	@waivers = Waiver.all
  end

  def show
    @waiver = Waiver.find(params[:id])
  end

  def new
  	@waiver = Waiver.new
  end

  def create
  	@waiver = Waiver.new(waiver_params)

  	if @waiver.save
      redirect_to @waiver
    else
      render 'new'
    end
  end

  def destroy
  	@waiver = Waiver.find(params[:id])
  	@waiver.destroy

  	redirect_to waivers_path
  end

  private 
    def waiver_params
      params.require(:waiver).permit(:name, :email, :waiver_class, :replacement_class, :taken_replacement_class, :file_upload, :comments)
    end

end
