class Api::V1::BasesController < AdminController
  before_action :set_basis, only: [:show, :edit, :update, :destroy]

  # GET /bases
  # GET /bases.json
  def index
    bases = Base.all
    render json:bases
  end

  # GET /bases/1
  # GET /bases/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basis
      @basis = Base.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    
end
