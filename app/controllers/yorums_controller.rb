class YorumsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  # GET /yorums
  # GET /yorums.json
  def sonyorum
    @yorum = Yorum.last
  end
  def index
    @yorums = Yorum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @yorums }
    end
  end

  # GET /yorums/1
  # GET /yorums/1.json
  def show
    @yorum = Yorum.find(params[:id])
   
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @yorum }
    end
  end

  # GET /yorums/new
  # GET /yorums/new.json
  def new
    @yorum = Yorum.new(params[:yorum])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @yorum }
    end
  end

  # GET /yorums/1/edit
  def edit
    @yorum = Yorum.find(params[:id])
  end

  # POST /yorums
  # POST /yorums.json
  def create
    @yorum = Yorum.new(params[:yorum])
    @yorum.user_id = current_user.id

    respond_to do |format|
      if @yorum.save
        format.html { redirect_to @yorum, notice: 'Yorum was successfully created.' }
        format.json { render json: @yorum, status: :created, location: @yorum }
      else
        format.html { render action: "new" }
        format.json { render json: @yorum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /yorums/1
  # PUT /yorums/1.json
  def update
    @yorum = Yorum.find(params[:id])

    respond_to do |format|
      if @yorum.update_attributes(params[:yorum])
        format.html { redirect_to @yorum, notice: 'Yorum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @yorum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yorums/1
  # DELETE /yorums/1.json
  def destroy
    @yorum = Yorum.find(params[:id])
    @yorum.destroy

    respond_to do |format|
      format.html { redirect_to yorums_url }
      format.json { head :no_content }
    end
  end
end
