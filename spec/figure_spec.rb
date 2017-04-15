require "spec_helper"

describe Figure do
  it "has a version number" do
    expect(Figure::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
