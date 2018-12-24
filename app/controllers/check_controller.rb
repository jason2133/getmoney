class CheckController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @checks = Check.all
    @checks_sort = @checks.sort
  end

  def mypage
    @checks =Check.all
    


  end

  def yes
    @check=Check.find(params[:check_id])
    @check.money = 1
    @check.save

    redirect_to :back
  end

  def no
    @check=Check.find(params[:check_id])
    @check.money = 2
    @check.save

    redirect_to :back
  end

  def edit
    @check=Check.find(params[:check_id])
  end

  def destroy
    @check=Check.find(params[:id])
    @check.destroy

    redirect_to :back
  end

  def create
    content=params[:gets]
    
    names = content.split('').join.split(',')

    names.each do |name|
      @check = Check.new
      @check.name = name
      @check.post_id=params[:post_id]
      @check.save  
      puts "eeeeeeeeeeeeeee#{@check.name}"
    end
    redirect_to :back
  end
  
end
