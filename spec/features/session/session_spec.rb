require 'rails_helper'

RSpec.describe 'session', type: :feature do
  context '' do
    scenario "user clicks register account" do
      visit root_path
      expect(page).to have_content "註冊"
      click_on '註冊'
      expect(page).to have_content "請填入會員資訊"
      fill_in "名字", with: 'Ning'
      fill_in '信箱', with: 'ningchang@gmail.com'
      fill_in '密碼', with: 'password'
      fill_in '確認密碼', with: 'password'
      click_on '送出'
      expect(page).to have_content "註冊"
    end
  end
end
