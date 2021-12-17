class CoinsController < ApplicationController
  before_action :set_coin, only: %i[ show update destroy ]
  before_action :authorized

  # GET /coins
  def index
    @coins = Coin.where(user_id: @user.id)

    render json: @coins
  end

  # GET /coins/1
  def show
    render json: @coin
  end

  # POST /coins
  def create
    @coin = Coin.new(coin_params)
    @coin.user_id = @user.id

    if @coin.save
      render json: @coin, status: :created, location: @coin
    else
      render json: @coin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coins/1
  def update
    if @coin.update(coin_params)
      render json: @coin
    else
      render json: @coin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coins/1
  def destroy
    @coin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coin
      @coin = Coin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coin_params
      params.require(:coin).permit(:ticker, :user_id)
    end
end
