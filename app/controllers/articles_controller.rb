class ArticlesController < ApplicationController
  def index
    @articles = Article.all # 複数ある投稿記事の一覧を表示する
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params) # 保存する箱みたいなものを作成
    if @article.save # 保存する
      redirect_to article_path(@article) # リダイレクトされる
    else
      render :new, status: :unprocessable_entity# 保存されなかったらnewに行く
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content) # articleっていうキーを持っているか求める タイトル、コンテンツを抜き出す
  end
end
