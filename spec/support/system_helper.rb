module SystemHelper
  def login
    general_user = create(:user)
    visit '/login'
    fill_in 'メールアドレス', with: general_user.email
    fill_in 'パスワード', with: 'password'
    click_button 'ログイン'
  end

  def login_as_guest_user
    guest_user = create(:user)
    visit login_path
    fill_in 'メールアドレス', with: user.email
    fill_in 'パスワード', with: 'password'
    click_button 'ログイン'
  end
end
