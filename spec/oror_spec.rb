require_relative '../lib/oror'

describe 'oror' do
  shared_examples_for 'oror' do |object, alternative, result|
    it "#{object}.oror #{alternative} == #{result}" do
      expect(object.oror alternative).to eq result
    end
  end

  it_behaves_like 'oror', 47, 48, 47
  it_behaves_like 'oror', '', 'alternative', 'alternative'
  it_behaves_like 'oror', nil, 'alternative', 'alternative'
  it_behaves_like 'oror', false, 'alternative', 'alternative'
  it_behaves_like 'oror', ' ', 'alternative', 'alternative'
  it_behaves_like 'oror', true, 'alternative', true
  it_behaves_like 'oror', 47.47, 'alternative', 47.47
  it_behaves_like 'oror', "\t\n\r", 'alternative', 'alternative'
end
