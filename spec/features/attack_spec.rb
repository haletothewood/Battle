feature "So that a player can win they can attack" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "David attacked Alex!"
  end

  scenario 'reduce Player 2 HP by 10' do
    srand(1)
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).to have_content "Alex: 55HP vs. David: 60HP"
  end

  scenario 'reduce Player 1 HP by 10' do
    srand(1)
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    click_button 'Attack'
    click_link 'OK'
    expect(page).to have_content "David: 49HP vs. Alex: 55HP"
  end

end
