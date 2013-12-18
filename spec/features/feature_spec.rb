require 'spec_helper'


describe "the signin process", :type => :feature do
  # before :each do
  #   User.make(:email => 'user@example.com', :password => 'caplin')
  # end

  xit "allows me to create an account" do
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




  xit "signs me in" do
    visit '/'
    within(".login-form") do
      fill_in 'user_email', :with => 'matt@matt.com'
      fill_in 'user_password', :with => 'password'
    end
    click_button 'Login'
    expect(page).to have_content 'Success'
  end

  it "signs in with facebook" do
    visit '/'
    find("a[href='users/auth/facebook']").click
    expect(response).to be 'Success'
  end


end