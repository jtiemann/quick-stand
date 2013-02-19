class QuickStandsController < ApplicationController
  # GET /quick_stands
  # GET /quick_stands.json
  def index
    @quick_stands = QuickStand.all
    @q = QuickStand.search(params[:q])
    @quick_stands = @q.result.order("created_at DESC")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quick_stands }
    end
  end

  # GET /quick_stands/1
  # GET /quick_stands/1.json
  def show
    @quick_stand = QuickStand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quick_stand }
    end
  end

  # GET /quick_stands/new
  # GET /quick_stands/new.json
  def new
    @quick_stand = QuickStand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quick_stand }
    end
  end

  # GET /quick_stands/1/edit
  def edit
    @quick_stand = QuickStand.find(params[:id])
  end

  # POST /quick_stands
  # POST /quick_stands.json
  def create
    @quick_stand = QuickStand.new(params[:quick_stand])

    respond_to do |format|
      if @quick_stand.save
        format.html { redirect_to @quick_stand, notice: 'Quick stand was successfully created.' }
        format.json { render json: @quick_stand, status: :created, location: @quick_stand }
      else
        format.html { render action: "new" }
        format.json { render json: @quick_stand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quick_stands/1
  # PUT /quick_stands/1.json
  def update
    @quick_stand = QuickStand.find(params[:id])

    respond_to do |format|
      if @quick_stand.update_attributes(params[:quick_stand])
        format.html { redirect_to @quick_stand, notice: 'Quick stand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quick_stand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quick_stands/1
  # DELETE /quick_stands/1.json
  def destroy
    @quick_stand = QuickStand.find(params[:id])
    @quick_stand.destroy

    respond_to do |format|
      format.html { redirect_to quick_stands_url }
      format.json { head :no_content }
    end
  end
end
