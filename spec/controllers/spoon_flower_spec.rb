require 'spec_helper'

describe SpoonFlower, :type => :class do
  it "#parse_results" do
    VCR.use_cassette("designs") do
      designs = SpoonFlower.parse_results
      expect(designs.class).to eq(Array)
      expect(designs.first.has_key?("id")).to be true
      expect(designs.first.has_key?("name")).to be true
      expect(designs.first.has_key?("user_id")).to be true
    end
  end
end