class Api::V1::PocketsController < AdminController
  before_action :set_pocket, only: [:show, :edit, :update, :destroy]

  # GET /pockets
  # GET /pockets.json
  def index
    pockets = Pocket.all
    render json:pockets
  end

  # GET /pockets/1
  # GET /pockets/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pocket
      @pocket = Pocket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    
end
