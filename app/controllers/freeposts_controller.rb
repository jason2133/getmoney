class FreepostsController < ApplicationController
  before_action :set_freepost, only: [:show, :edit, :update, :destroy]

  # GET /freeposts
  # GET /freeposts.json
  # def index
    
  #   @freeposts = Freepost.all
  # end

  def index
    @freeposts = Freepost.all
    if params[:search]
      @freeposts = Freepost.search(params[:search]).order("created_at DESC")
    else
      @freeposts = Freepost.all.order('created_at DESC')
    end
  end

  # GET /freeposts/1
  # GET /freeposts/1.json
  def show
  end

  # GET /freeposts/new
  def new
    @freepost = Freepost.new
  end

  # GET /freeposts/1/edit
  def edit
  end

  # POST /freeposts
  # POST /freeposts.json
  def create
    
    @freepost = Freepost.new(freepost_params)
    @freepost.username = current_user.username
    @freepost.user_id = current_user.id

    respond_to do |format|
      if @freepost.save
        format.html { redirect_to @freepost, notice: 'Freepost was successfully created.' }
        format.json { render :show, status: :created, location: @freepost }
      else
        format.html { render :new }
        format.json { render json: @freepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freeposts/1
  # PATCH/PUT /freeposts/1.json
  def update
    respond_to do |format|
      if @freepost.update(freepost_params)
        format.html { redirect_to @freepost, notice: 'Freepost was successfully updated.' }
        format.json { render :show, status: :ok, location: @freepost }
      else
        format.html { render :edit }
        format.json { render json: @freepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freeposts/1
  # DELETE /freeposts/1.json
  def destroy
    @freepost.destroy
    respond_to do |format|
      format.html { redirect_to freeposts_url, notice: 'Freepost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freepost
      @freepost = Freepost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def freepost_params
      params.require(:freepost).permit(:title, :content, :username)
    end
end
