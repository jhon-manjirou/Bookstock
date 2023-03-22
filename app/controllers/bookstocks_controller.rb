class BookstocksController < ApplicationController
  def show
    @bookstocks = Bookstock.select_sort(params[:sort]).search_keyword(params[:keyword]).page(params[:page]).per(6)
  end

  def edit
    @bookstock = Bookstock.new
  end

  def create
    @bookstock = Bookstock.new(bookstock_params)
    if @bookstock.save
      flash[:success] = "登録しました！"
      redirect_to root_url
    else
      flash[:failed] = "登録に失敗しました。"
      redirect_to edit_path
    end
  end

  def destroy
    @bookstock = Bookstock.find(params[:id])
    @bookstock.destroy
    flash[:success] = "書籍情報を削除しました。"
    redirect_to request.referer
  end

  private
    def bookstock_params
      params.require(:bookstock).permit(:title, :sort, :author)
    end
end
