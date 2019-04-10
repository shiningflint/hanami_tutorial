RSpec.describe Web::Controllers::Home::Index do
  let(:action)  { Web::Controllers::Home::Index.new }
  let(:params) { Hash[] }

  it 'Access home page successfully' do
    response = action.call(params)
    expect(response[0]).to be 200
  end
end
