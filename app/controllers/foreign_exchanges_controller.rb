class ForeignExchangesController < ApplicationController
  before_action :set_foreign_exchange, only: [:show, :edit, :update, :destroy]

  # GET /foreign_exchanges
  # GET /foreign_exchanges.json
  def index
    @foreign_exchanges = ForeignExchange.all
  end

  # GET /foreign_exchanges/1
  # GET /foreign_exchanges/1.json
  def show
  end

  # GET /foreign_exchanges/new
  def new
    @foreign_exchange = ForeignExchange.new
  end

  # GET /foreign_exchanges/1/edit
  def edit
  end

  # POST /foreign_exchanges
  # POST /foreign_exchanges.json
  def create
    @foreign_exchange = ForeignExchange.new(foreign_exchange_params)

    respond_to do |format|
      if @foreign_exchange.save
        format.html { redirect_to @foreign_exchange, notice: 'Foreign exchange was successfully created.' }
        format.json { render :show, status: :created, location: @foreign_exchange }
      else
        format.html { render :new }
        format.json { render json: @foreign_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foreign_exchanges/1
  # PATCH/PUT /foreign_exchanges/1.json
  def update
    respond_to do |format|
      if @foreign_exchange.update(foreign_exchange_params)
        format.html { redirect_to @foreign_exchange, notice: 'Foreign exchange was successfully updated.' }
        format.json { render :show, status: :ok, location: @foreign_exchange }
      else
        format.html { render :edit }
        format.json { render json: @foreign_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foreign_exchanges/1
  # DELETE /foreign_exchanges/1.json
  def destroy
    @foreign_exchange.destroy
    respond_to do |format|
      format.html { redirect_to foreign_exchanges_url, notice: 'Foreign exchange was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foreign_exchange
      @foreign_exchange = ForeignExchange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foreign_exchange_params
      params.require(:foreign_exchange).permit(:description, :name)
    end
end
