class BlogersController < ApplicationController
  before_action :set_bloger, only: [:show, :edit, :update, :destroy]

  # GET /blogers
  # GET /blogers.json
  def index
    @blogers = Bloger.all
  end

  # GET /blogers/1
  # GET /blogers/1.json
  def show
  end

  # GET /blogers/new
  def new
    @bloger = Bloger.new
  end

  # GET /blogers/1/edit
  def edit
  end

  # POST /blogers
  # POST /blogers.json
  def create
    @bloger = Bloger.new(bloger_params)

    respond_to do |format|
      if @bloger.save
        format.html { redirect_to @bloger, notice: 'Bloger was successfully created.' }
        format.json { render :show, status: :created, location: @bloger }
      else
        format.html { render :new }
        format.json { render json: @bloger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogers/1
  # PATCH/PUT /blogers/1.json
  def update
    respond_to do |format|
      if @bloger.update(bloger_params)
        format.html { redirect_to @bloger, notice: 'Bloger was successfully updated.' }
        format.json { render :show, status: :ok, location: @bloger }
      else
        format.html { render :edit }
        format.json { render json: @bloger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogers/1
  # DELETE /blogers/1.json
  def destroy
    @bloger.destroy
    respond_to do |format|
      format.html { redirect_to blogers_url, notice: 'Bloger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bloger
      @bloger = Bloger.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bloger_params
      params.require(:bloger).permit(:title, :body)
    end
end
