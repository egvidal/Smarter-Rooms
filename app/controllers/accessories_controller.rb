class AccessoriesController < ApplicationController
  before_action :set_accessory, only: [:show, :edit, :update, :destroy]
  before_action :verify_if_admin_and_redirect_with_error_message_if_not, only: [:new, :edit, :create, :update, :destroy]

  # GET /accessories
  # GET /accessories.json
  def index
    @accessories_selected_in_nav = true
    @accessories = Accessory.all
    @rooms = Room.joins(:accessories)
  end

  # GET /accessories/1
  # GET /accessories/1.json
  def show
    @rooms = Room.joins(:accessories)
  end

  # GET /accessories/new
  def new
    @accessory = Accessory.new
  end

  # GET /accessories/1/edit
  def edit
  end

  # POST /accessories
  # POST /accessories.json
  def create
    @accessory = Accessory.new(accessory_params)

    respond_to do |format|
      if @accessory.save
        flash[:success] = "Accessory was successfully created."
        format.html { redirect_to @accessory }
        format.json { render :show, status: :created, location: @accessory }
      else
        flash[:danger] = "There was an error performing the operation. #{@accessory.errors.full_messages.first}"
        format.html { redirect_back fallback_location: accessories_path}
        format.json { render json: @accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accessories/1
  # PATCH/PUT /accessories/1.json
  def update
    respond_to do |format|
      if @accessory.update(accessory_params)
        flash[:success] = "Accessory was successfully updated."
        format.html { redirect_to @accessory }
        format.json { render :show, status: :ok, location: @accessory }
      else
        flash[:danger] = "There was an error performing the operation. #{@accessory.errors.full_messages.first}"
        format.html { redirect_back fallback_location: @accessory }
        format.json { render json: @accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accessories/1
  # DELETE /accessories/1.json
  def destroy
    @accessory.destroy
    respond_to do |format|
      flash[:success] = "Accessory was successfully deleted."
      format.html { redirect_to accessories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accessory
      @accessory = Accessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accessory_params
      params.require(:accessory).permit(:name)
    end

    def verify_if_admin_and_redirect_with_error_message_if_not 
      unless current_user.is_admin?
        flash[:danger] = "You are not authorized to perform this action."
        redirect_to accessories_url
      end 
    end
end
