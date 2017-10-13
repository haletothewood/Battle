feature 'after each attack the turn is switched' do
  scenario 'first turn' do
    sign_in_and_play
    expect(page).to have_content "It's David's turn!"
  end
  scenario 'turn switch' do
    sign_in_and_play
    click_button "Attack"
    click_link "OK"
    expect(page).to have_content "It's Alex's turn!"
  end
  scenario 'the opposite players hit points reduce each turn' do
    srand(1)
    sign_in_and_play
    click_button "Attack"
    click_link "OK"
    click_button "Attack"
    click_link "OK"
    expect(page).to have_content "David: 49HP vs. Alex: 55HP"
  end
end
