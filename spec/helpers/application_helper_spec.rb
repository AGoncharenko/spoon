require 'spec_helper'

describe ApplicationHelper, :type => :helper do
  it '#full_name it should work' do
    expect(full_name('andrew', 'goncharenko')).to eq('Andrew Goncharenko')
  end

  it '#capitalize_first_letter' do
    expect(capitalize_first_letter('andreW')).to eq('AndreW')
  end
end
