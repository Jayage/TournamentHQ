class SpiritScoresController < ApplicationController
  # GET /spirit_scores
  # GET /spirit_scores.json
  def index
    @spirit_scores = SpiritScore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spirit_scores }
    end
  end

  # GET /spirit_scores/1
  # GET /spirit_scores/1.json
  def show
    @spirit_score = SpiritScore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spirit_score }
    end
  end

  # GET /spirit_scores/new
  # GET /spirit_scores/new.json
  def new
    @spirit_score = SpiritScore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spirit_score }
    end
  end

  # GET /spirit_scores/1/edit
  def edit
    @spirit_score = SpiritScore.find(params[:id])
  end

  # POST /spirit_scores
  # POST /spirit_scores.json
  def create
    @spirit_score = SpiritScore.new(params[:spirit_score])

    respond_to do |format|
      if @spirit_score.save
        format.html { redirect_to @spirit_score, notice: 'Spirit score was successfully created.' }
        format.json { render json: @spirit_score, status: :created, location: @spirit_score }
      else
        format.html { render action: "new" }
        format.json { render json: @spirit_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spirit_scores/1
  # PUT /spirit_scores/1.json
  def update
    @spirit_score = SpiritScore.find(params[:id])

    respond_to do |format|
      if @spirit_score.update_attributes(params[:spirit_score])
        format.html { redirect_to @spirit_score, notice: 'Spirit score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spirit_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spirit_scores/1
  # DELETE /spirit_scores/1.json
  def destroy
    @spirit_score = SpiritScore.find(params[:id])
    @spirit_score.destroy

    respond_to do |format|
      format.html { redirect_to spirit_scores_url }
      format.json { head :no_content }
    end
  end
end
