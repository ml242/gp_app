require 'spec_helper'

describe WelcomeController do

  describe "GET 'index'" do
    it "can successfully pulls the page" do
      get 'index'
      expect(response).to be_success
    end
  end

end

# describe ItinerariesController do

#   before(:each)
#     u = User.new(name: matt, password: password, password_confirmation: password, email: matt@matt.com)
#   end

#   describe "GET 'index'" do
#     it "successfully pulls the page" do
#       get 'index'
#       expect(response).to be_success
#     end
#   end

# end