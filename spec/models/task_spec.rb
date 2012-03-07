require 'spec_helper'

describe Task do
  it "add two number" do
    subject.add(1,1).should_be 2
  end
end
