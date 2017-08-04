class TodosController < ApplicationController
  before_action :find_todo, only: [:show, :edit, :update, :destroy, :complete]
  before_action :all_todo, only: [:index, :list]

  def index
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todos_params)
    @todo.save
    redirect_to todos_path
  end

  def show
  end

  def edit
  end

  def update
    @todo.update(todos_params)
    redirect_to todos_path
  end

  def destroy
    @todo.destroy
    redirect_to todos_path
  end

  def complete
    @todo.completed = 1
    @todo.save
    redirect_to todos_path
  end

  def list
  end

  def find_todo
    @todo = Todo.find(params[:id])
  end

  def all_todo
    @todos = Todo.all
  end

  private
  def todos_params
    params.require(:todo).permit(:description, :completed)
  end
end
