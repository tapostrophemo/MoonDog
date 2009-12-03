class StoryCardsController < ApplicationController

  def index
    @story_cards = StoryCard.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @story_cards }
    end
  end

  def show
    @story_card = StoryCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @story_card }
    end
  end


  def new
    @story_card = StoryCard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @story_card }
    end
  end

  def edit
    @story_card = StoryCard.find(params[:id])
  end

  def create
    @story_card = StoryCard.new(params[:story_card])

    respond_to do |format|
      if @story_card.save
        flash[:notice] = 'Story Card was successfully created.'
        format.html { redirect_to(story_cards_path) }
        format.xml  { render :xml => @story_card, :status => :created, :location => @story_card }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @story_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @story_card = StoryCard.find(params[:id])

    respond_to do |format|
      if @story_card.update_attributes(params[:story_card])
        flash[:notice] = 'Story Card was successfully updated.'
        format.html { redirect_to(story_cards_path) }
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
