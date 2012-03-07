require 'spec_helper'

describe TasksController do
  describe "GET new" do
    it "has a 200 status code" do
      get :new
      response.code.should eq('200')
    end
  end

  describe "GET index" do
    it "has a 200 status code" do
      get :index
      response.code.should eq('200')
    end
  end
  
  describe "POST create" do
    it "creates a new task" do
      post :create, :task => {:title => 'The title' }
      assigns[:task].title.should == 'The title'
    end

    it "redirects to the show action" do
      task = mock_model(Task,:attributes => true, :save => true)
      Task.stub(:new) {task}
      post :create, :task => {:title => 'The title' }
      response.should redirect_to(task_path(task))
    end

  end
end
