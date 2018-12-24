class PostNsController < ApplicationController
  before_action :set_post_n, only: [:show, :edit, :update, :destroy]

  # GET /post_ns
  # GET /post_ns.json
  def index
    # 로그인한 정보랑 같은 사람이 쓴 것만 표시
    @post_ns = PostN.where(user_id:current_user.id)
  end

  # GET /post_ns/1
  # GET /post_ns/1.json
  def show
  end

  # GET /post_ns/new
  def new
    @post_n = PostN.new
  end

  # GET /post_ns/1/edit
  def edit
  end

  # POST /post_ns
  # POST /post_ns.json
  def create
    @post_n = PostN.new(post_n_params)
    # 현재 로그인한 유저 id 저장
    @post_n.user_id = current_user.id
    # @post_n.etc = params[:post_id]
    respond_to do |format|
      if @post_n.save
        format.html { redirect_to post_n_check_n_index_path(@post_n.id), notice: 'Post n was successfully created.' }
        format.json { render :show, status: :created, location: @post_n }
      else
        format.html { render :new }
        format.json { render json: @post_n.errors, status: :unprocessable_entity }
      end
    end
    
  end

  # PATCH/PUT /post_ns/1
  # PATCH/PUT /post_ns/1.json
  def update
    respond_to do |format|
      if @post_n.update(post_n_params)
        format.html { redirect_to @post_n, notice: 'Post n was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_n }
      else
        format.html { render :edit }
        format.json { render json: @post_n.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_ns/1
  # DELETE /post_ns/1.json
  def destroy
    @post_n.destroy
    respond_to do |format|
      format.html { redirect_to post_ns_url, notice: 'Post n was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_n
      @post_n = PostN.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_n_params
      params.require(:post_n).permit(:date, :title, :etc, :total_price, :member)
    end
end
