class Api::V1::ListsController < ApplicationController
  before_action :set_list, only: [:show]

  # GET /lists
  def index
    @list = List.create()

    render json: @list
  end

  # GET /lists/1
  def show
    render json: @list
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.where(public_id: params[:id]).first
    end

    # Only allow a trusted parameter "white list" through.
    def list_params
      params.require(:list).permit(:id)
    end
end
