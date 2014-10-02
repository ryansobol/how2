class StepsController < ApplicationController
  def index
    @list = List.find(params[:list_id])
    @steps = @list.steps
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
