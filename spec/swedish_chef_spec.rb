require 'spec_helper'

describe SwedishChef do
  let(:request) { Rack::MockRequest.new(SwedishChef) }

  it 'it outputs swedish chef version' do
    response = request.post('/', input: 'Hello world')
    expect(response.body.chomp).to eq 'Hellu vurld'
  end
end
