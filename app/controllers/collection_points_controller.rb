class CollectionPointsController < ApplicationController
  before_action :set_collection_point, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search]
      normalized_search = Normalizer.new.normalize(params[:search])
      @collection_points = CollectionPoint.where("name like ? OR city like ? OR state like ?", "%#{normalized_search}%", "%#{normalized_search}%", "%#{normalized_search}%")
    else
      @collection_points = CollectionPoint.all
      @collection_points = CollectionPoint.order(name: :desc)
    end
  end

  def show
  end

  def new
    @collection_point = CollectionPoint.new
  end

  def edit

  end

  def home
  end

  def create
    @collection_point = CollectionPoint.new(collection_point_params)

    respond_to do |format|
      if @collection_point.save
        flash[:notice] = "Local criado com sucesso!"
        format.html { redirect_to collection_points_path }
        format.json { render :show, status: :created, location: @collection_point }
      else
        flash[:notice] = "Insira local de coleta no formato adequado"
        format.html { render :new }
        format.json { render json: @collection_point.errors }
      end
    end
  end

  def update
    respond_to do |format|
      if @collection_point.update(collection_point_params)
        format.html { redirect_to @collection_point }
      else
        format.html { render :edit }
        format.json { render json: @collection_point.errors }
      end
    end
  end

  def destroy
    @collection_point.destroy
    respond_to do |format|
      format.html { redirect_to @collection_point, notice: 'Local de coleta apagado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    def set_collection_point
      @collection_point = CollectionPoint.find(params[:id])
    end

    def collection_point_params
      params.require(:collection_point).permit(:name, :state, :city, :address, :phone, :obs)
    end
end
