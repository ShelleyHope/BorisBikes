require 'person'

describe 'Person' do

  it 'has no bike to begin with' do
    expect(Person.new).not_to have_bike
  end

  it 'can have a bike' do
    person = Person.new :bike
    expect(person).to have_bike
  end
  
end