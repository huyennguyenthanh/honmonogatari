class ChaptersController < ApplicationController
    before_action :set_chapter, only: %i[ show edit update destroy ]

  def index
    @chapter = Chapter.all
  end

  def show
  end

  def new
    @chapter = Chapter.new
  end

  def edit
  end

  def create
    @chapter = Chapter.new(chapter_params)
    @chapter.user_id = current_user.id
    @chapter.book.number_of_chapters = @chapter.book.chapter.length()+1
    @chapter.order = @chapter.book.number_of_chapters
    respond_to do |format|
      if @chapter.save && @chapter.book.save
        url = "/books/" + @chapter.book_id.to_s
        format.html { redirect_to url, notice: 'Chapter was successfully created.' }
        format.json { render :show, status: :created, location: @chapter}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @chapter.update(chapter_params)
        format.html { redirect_to @chapter, notice: "Chapter was successfully updated." }
        format.json { render :show, status: :ok, location: @book_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @chapter.book.number_of_chapters += -1
    respond_to do |format|
        if @chapter.destroy && @chapter.book.save
            format.html { redirect_to chapter_url, notice: "Book review was successfully destroyed." }
            format.json { head :no_content }
        end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapter
      @chapter = Chapter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chapter_params
      params.require(:chapter).permit(:book_id, :user_id, :title, :content)
    end
end
