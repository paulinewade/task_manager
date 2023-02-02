class TasksController < ApplicationController
  def index
<<<<<<< HEAD
      @count = Task.count
      @tasks = Task.order(:position)
=======
    @count = Task.count
    @tasks = Task.order(:position)
>>>>>>> e03338b91253561d1c0fc41a44bc80f0c75a9f03
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @count = Task.count
    @task = Task.new(position: @count + 1)
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render('new')
      #renders the new.html.erb, and doesn't call the action 'new'
      #so any instance variables needed should be defined here e.g., @count
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render('edit')
    end
  end

  def delete
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :position, :completed, :description)
  end
end
