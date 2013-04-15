require 'spec_helper'

feature 'Creating Documents' do
  scenario "Creating a valid document" do
    visit '/'
    fill_in :title, with: "Lorem Ipsum"
    attach_file "Attachment", File.expand_path("spec/fixtures/test.txt")
    click_button "Upload Document"
    #save_and_open_page
    page.should have_content("Document has been created.")
    page.should have_content("test.txt")
    click_link "test.txt"
    page.should have_content("Lorem ipsum dolor sit amet")
  end

  scenario "Creating an invalid document" do
    visit '/'
    fill_in :title, with: "Lorem Ipsum"
    attach_file "Attachment", File.expand_path("spec/fixtures/Canada.png")
    click_button "Upload Document"
    save_and_open_page
    page.should_not have_content("Document has been created.")
    page.should_not have_content("Canada.txt")
  end

end
