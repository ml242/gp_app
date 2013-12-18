require 'spec_helper'


describe "the signin process", :type => :feature do
  # before :each do
  #   User.make(:email => 'user@example.com', :password => 'caplin')
  # end

  it "allows me to create an account" do
    visit '/welcome/register'
    within(".login-form") do
      fill_in 'user_name', :with => 'matt'
      fill_in 'user_email', :with => 'matt@matt.com'
      fill_in 'user_password', :with => 'password'
      fill_in 'user_password_confirmation', :with => 'password'
    end
    click_button 'Sign up'
    expect(page).to have_content 'Success'
  end




  it "signs me in" do
    visit '/welcome/index'
    within(".login-form") do
      fill_in 'user_email', :with => 'matt@matt.com'
      fill_in 'user_password', :with => 'password'
    end
    click_button 'Login'
    expect(page).to have_content 'Success'
  end

  it "signs in with facebook" do
    visit '/welcome/index'
    within("#fb-button") do
      click_link
    end
    expect(response).to be 'Success'
  end


end