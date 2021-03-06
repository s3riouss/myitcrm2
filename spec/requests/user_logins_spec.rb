require 'spec_helper'

describe 'UserLogins' do
  it 'logs ussr into system' do
    user = FactoryGirl(:user)
    visit login_path
    fill_in 'username', :with => user.username
    fill_in 'password', :with => user.password
    click_button 'sign in'
  end
end
