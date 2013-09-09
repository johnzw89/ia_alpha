class ComicTitlesController < ApplicationController
  # GET /comic_titles
  # GET /comic_titles.json
  def index
    @comic_titles = ComicTitle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comic_titles }
    end
  end

  # GET /comic_titles/1
  # GET /comic_titles/1.json
  def show
    @comic_title = ComicTitle.find_by_id(params[:id])
    @comics = @comic_title.try(:comics).all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comic_title }
    end
  end
 
  # GET /comic_titles/new
  # GET /comic_titles/new.json
  def new
    @user = current_user
    @user_id = current_user.id
    @comic_title = @user.comic_titles.new
  end

  # GET /comic_titles/1/edit
  def edit
    @comic_title = ComicTitle.find(params[:id])
  end

  # POST /comic_titles
  # POST /comic_titles.json
  def create
    @user = current_user
    @comic_title = current_user.comic_titles.new(params[:comic_title])

    respond_to do |format|
      if @comic_title.save
        format.html { redirect_to @comic_title, notice: 'Comic title was successfully created.' }
        format.json { render json: @comic_title, status: :created, location: @comic_title }
      else
        format.html { render action: "new" }
        format.json { render json: @comic_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comic_titles/1
  # PUT /comic_titles/1.json
  def update
    @comic_title = ComicTitle.find(params[:id])

    respond_to do |format|
      if @comic_title.update_attributes(params[:comic_title])
        format.html { redirect_to @comic_title, notice: 'Comic title was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comic_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comic_titles/1
  # DELETE /comic_titles/1.json
  def destroy
    @comic_title = ComicTitle.find(params[:id])
    @comic_title.destroy

    respond_to do |format|
      format.html { redirect_to comic_titles_url }
      format.json { head :no_content }
    end
  end
end
