require_relative '../lib/oror'

describe 'oror' do
  it 'should return the first value if not blank' do
    expect(47.oror 48).to eq 47
  end
end
