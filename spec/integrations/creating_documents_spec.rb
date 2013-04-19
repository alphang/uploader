require 'spec_helper'

feature 'Creating Documents' do
  scenario "Creating a valid document" do
    visit '/'
    fill_in :title, with: "Lorem Ipsum"
    attach_file "Attachment", File.expand_path("spec/fixtures/test.txt")
    click_button "Upload Document"
    page.should have_content("Document has been created.")
    h = 'http://uploaderalpha.s3.amazonaws.com/documents/assets'
    page.should have_selector "a[href^='#{h}']", text: "test.txt"
  end

  scenario "Creating an invalid document" do
    visit '/'
    fill_in :title, with: "Lorem Ipsum"
    attach_file "Attachment", File.expand_path("spec/fixtures/Canada.png")
    click_button "Upload Document"
    page.should_not have_content("Document has been created.")
    page.should_not have_content("Canada.txt")
  end

end
