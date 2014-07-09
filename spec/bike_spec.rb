require 'bike'

describe 'Bike' do
  it 'is not broken when created' do
    expect(Bike.new).not_to be_broken
  end

end