require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))
require 'person'

describe AmexOpenForum do

  before :each do
    @person = Person.new
  end

  it "should show as an included module" do
    Person.included_modules.should include(AmexOpenForum)
  end

  # it "should mix in HTTParty" do
  #   Person.included_modules.should include(HTTParty)
  # end


  # Setting API Key
  it { @person.should respond_to(:open_forum_api_key) }
  it { @person.should respond_to(:open_forum_api_key=) }


  # Methods
  it { @person.should respond_to(:most_recent) }
  it { @person.should respond_to(:most_viewed) }
  it { @person.should respond_to(:most_commented) }
  it { @person.should respond_to(:most_shared) }
  it { @person.should respond_to(:article_details) }
  it { @person.should respond_to(:video_details) }
end