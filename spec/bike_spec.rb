require "bike"

describe Bike do
  it "responds to working method" do
    is_expected.to respond_to(:working?)
  end
  it "lets the user report if bike is broken when docking" do
    expect(subject.report_broken).to eq true
  end
end
