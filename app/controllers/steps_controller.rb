class StepsController < ApplicationController
  # GET /lists/:list_id/steps
  def index
    @list = List.find(params[:list_id])
    @steps = @list.steps
  end

  # GET /lists/:list_id/steps/:id
  def show
    # @step = Step.where(id: params[:id], list_id: params[:list_id]).i(:list)
    @list = List.find(params[:list_id])
    @step = @list.steps.find(params[:id])
  end

  # GET /lists/:list_id/steps/new
  def new
    @list = List.find(params[:list_id])
    @step = Step.new
  end

  def edit
  end

  # POST /lists/:list_id/steps
  def create
    @list = List.find(params[:list_id])
    @step = @list.steps.build(required_params)

    if @step.save
      redirect_to [@list, @step], notice: 'Step created'
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def required_params
    params.require(:step).permit(:name)
  end
end
