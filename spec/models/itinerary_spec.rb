require 'spec_helper'

describe Itinerary do

  it "has a title" do
    i = Itinerary.create(:title => "France")
    expect(i.title).to eq("France")
  end


end