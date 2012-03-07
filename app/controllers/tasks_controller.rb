class TasksController < ApplicationController
  def index
  end

  def new
    @task = Task.new
  end

<<<<<<< HEAD
  def index
  end

  def create
    @task = Task.new(params[:task])
=======
  def create
    @task = Task.new(params[:task])
    if @task.save
      redirect_to @task
    end
  end

  def show

>>>>>>> b5e29b6ec6db0da595b6cf2f87ebbea412489f98
  end
end
