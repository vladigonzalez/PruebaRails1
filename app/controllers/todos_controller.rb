class TodosController < ApplicationController
  def index
      @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todos_params)
    #@todos = Todo.new
    @todo.save
    redirect_to todos_path
  end

  def show
    @todo = Todo.find(params[:id])
  end

  private
  def todos_params
    params.require(:todo).permit(:description, :completed)
  end
end
