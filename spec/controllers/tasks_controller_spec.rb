require 'spec_helper'

describe TasksController do
  describe "GET new" do
    it "has a 200 status code" do
      get :new
      response.code.should eq('200')
    end
  end
end
