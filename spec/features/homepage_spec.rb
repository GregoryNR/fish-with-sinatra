require "spec_helper"

feature "Homepage" do
  scenario "should have the content 'fish homepage'" do
    visit "/"

    expect(page).to have_content("Fish Homepage")

    expect(page).to have_content("Nemo", "Jaws", "Orca")

  end
end

feature "Nemo" do
  scenario "should have the content" do
    visit "/nemo"

    expect(page).to have_content("Nemo")

    expect(page).to have_content("Full Name", "Short Description", "Image", "Water Type")

    expect(page).to have_link "Link to Clown Fish Wikipedia"

    click_link "Homepage"

  end

end

feature "Jaws" do
  scenario "should have the content" do
    visit "/jaws"

    expect(page).to have_content("Jaws")

    expect(page).to have_content("Full Name", "Short Description", "Image", "Water Type")

    expect(page).to have_link "Link to Jaws (aka Shark) Wikipedia"

    click_link "Homepage"

  end

end
feature "Orca" do
  scenario "should have the content" do
    visit "/orca"

    expect(page).to have_content("Orca")

    expect(page).to have_content("Full Name", "Short Description", "Image", "Water Type")

    expect(page).to have_link "Link to Orca (aka Killer Whale) Wikipedia"

    save_and_open_page

    click_link "Homepage"

  end

end