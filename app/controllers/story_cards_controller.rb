class StoryCardsController < ApplicationController
  # GET /story_cards
  # GET /story_cards.xml
  def index
    @story_cards = StoryCard.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @story_cards }
    end
  end

  # GET /story_cards/1
  # GET /story_cards/1.xml
  def show
    @story_card = StoryCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @story_card }
    end
  end

  # GET /story_cards/new
  # GET /story_cards/new.xml
  def new
    @story_card = StoryCard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @story_card }
    end
  end

  # GET /story_cards/1/edit
  def edit
    @story_card = StoryCard.find(params[:id])
  end

  # POST /story_cards
  # POST /story_cards.xml
  def create
    @story_card = StoryCard.new(params[:story_card])

    respond_to do |format|
      if @story_card.save
        flash[:notice] = 'StoryCard was successfully created.'
        format.html { redirect_to(@story_card) }
        format.xml  { render :xml => @story_card, :status => :created, :location => @story_card }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @story_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /story_cards/1
  # PUT /story_cards/1.xml
  def update
    @story_card = StoryCard.find(params[:id])

    respond_to do |format|
      if @story_card.update_attributes(params[:story_card])
        flash[:notice] = 'StoryCard was successfully updated.'
        format.html { redirect_to(@story_card) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @story_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /story_cards/1
  # DELETE /story_cards/1.xml
  def destroy
    @story_card = StoryCard.find(params[:id])
    @story_card.destroy

    respond_to do |format|
      format.html { redirect_to(story_cards_url) }
      format.xml  { head :ok }
    end
  end
end
