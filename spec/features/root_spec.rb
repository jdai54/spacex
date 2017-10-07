require 'rails_helper.rb'

describe "user visits the root page", :type => :feature do
  it "takes them to the welcome page" do
    visit root_path
    expect(page).to have_content 'Latest SpaceX Launch Information'
  end
end
