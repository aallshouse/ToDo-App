class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def index
  end

  def create
    @task = Task.new(params[:task])
  end
end
