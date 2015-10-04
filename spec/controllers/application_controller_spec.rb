require 'spec_helper'

describe ApplicationController do
  it '#find_design(id)' do
    VCR.use_cassette("designs") do
      SpoonFlower.parse_results
    end
    design = Rails.cache.read('designs').first
    id = design['id']
    expect(subject.find_design(id)).to eq(design)
  end
end
