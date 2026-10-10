class CommentsController < ApplicationController
  before_action :set_item

  def new
    @comment = @item.comments.build
  end

  def create
    @comment = @item.comments.build(comment_params)
    @comment.person = Person.first

    if @comment.save
      redirect_to @item, notice: "Comment added."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def comment_params
    params.require(:comment).permit(:content, :person_id)
  end
end