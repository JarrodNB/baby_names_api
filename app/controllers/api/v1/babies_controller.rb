class Api::V1::BabiesController < ApplicationController
  before_action :set_baby, only: [:update]

  # POST /babies
  def create
    @baby = Baby.new(baby_params)

    if @baby.save
      render json: @baby, status: :created
    else
      render json: @baby.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /babies/1
  def update
    if @baby.update(baby_params)
      render json: @baby
    else
      render json: @baby.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baby
      @baby = Baby.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def baby_params
      params.require(:baby).permit(:id, :crossed_out, :name, :list_id)
    end
end
