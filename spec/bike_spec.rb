require "bike"

describe Bike do
  it "responds to working method" do
    is_expected.to respond_to(:working?)
  end
end
