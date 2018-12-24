class CheckNController < ApplicationController
  def index
    @post_n = PostN.find(params[:post_n_id])
    @checks = CheckN.all
    @checks_sort = @checks.sort
  end

  def mypage
    @checks =CheckN.all
    


  end

  def yes
    @check_n=CheckN.find(params[:check_id])
    @check_n.moeny = 1
    @check_n.save

    redirect_to :back
  end

  def no
    @check_n=CheckN.find(params[:check_id])
    @check_n.moeny = 2
    @check_n.save

    redirect_to :back
  end

  def edit
    @check_n=CheckN.find(params[:check_id])
  end

  def destroy
    @check_n=CheckN.find(params[:id])
    @check_n.destroy

    redirect_to :back
  end

  def create
    content=params[:gets]
    
    names = content.split('').join.split(',')

    names.each do |name|
      @check_n = CheckN.new
      @check_n.name = name
      @check_n.PostN_id=params[:post_n_id]
      @check_n.save  
    end
    redirect_to :back
  end
  
end
