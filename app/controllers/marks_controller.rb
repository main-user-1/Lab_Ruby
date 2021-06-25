class MarksController < ApplicationController

  def edit
    @post = Post.find(params[:post_id])
    @mark = Mark.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @mark = Mark.find(params[:id])

    @mark.letter = letter @mark.points

    if @mark.update(marks_params)
      redirect_to post_path @post
    else
      render 'edit'
    end
  end

  def create
    @post = Post.find params[:post_id]

    mark = Mark.new marks_params
    mark.letter = letter mark.points
    @post.marks.create({ points: mark.points, letter: mark.letter })
    redirect_to post_path @post
  end

  def destroy
    @post = Post.find(params[:post_id])
    @mark = Mark.find(params[:id])
    @mark.destroy

    redirect_to post_path @post
  end

  private def marks_params
    params.require(:mark).permit(:points)
  end

  private def letter value
    if value > 85
      'A'
    elsif value > 65
      'B'
    elsif value > 40
      'C'
    elsif value > 20
      'D'
    else
      'F'
    end
  end

end
