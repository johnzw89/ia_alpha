class ComicPagesController < ApplicationController
  # GET /comic_pages
  # GET /comic_pages.json
  def index
    @comic_pages = ComicPage.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comic_pages }
    end
  end

  # GET /comic_pages/1
  # GET /comic_pages/1.json
  def show
    @comic_page = ComicPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comic_page }
    end
  end

  # GET /comic_pages/new
  # GET /comic_pages/new.json
  def new
    @comic = Comic.find(params[:comic_id])
    @comic_page = @comic.comic_pages.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comic_page }
    end
  end

  # GET /comic_pages/1/edit
  def edit
    @comic_page = ComicPage.find(params[:id])
  end

  # POST /comic_pages
  # POST /comic_pages.json
  def create
    @comic = Comic.find(params[:comic_id])
    @comic_page = @comic.comic_pages.create(params[:comic_page])

    respond_to do |format|
      if @comic_page.save
        format.html { redirect_to @comic_page, notice: 'Comic page was successfully created.' }
        format.json { render json: @comic_page, status: :created, location: @comic_page }
      else
        format.html { render action: "new" }
        format.json { render json: @comic_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comic_pages/1
  # PUT /comic_pages/1.json
  def update
    @comic_page = ComicPage.find(params[:id])

    respond_to do |format|
      if @comic_page.update_attributes(params[:comic_page])
        format.html { redirect_to @comic_page, notice: 'Comic page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comic_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comic_pages/1
  # DELETE /comic_pages/1.json
  def destroy
    @comic_page = ComicPage.find(params[:id])
    @comic_page.destroy

    respond_to do |format|
      format.html { redirect_to comic_pages_url }
      format.json { head :no_content }
    end
  end
end
