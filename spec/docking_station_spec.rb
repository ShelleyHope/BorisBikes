require 'docking_station'

describe 'DockingStation' do

  let (:bike)     { double :bike, broken?: false }
  let (:station)  { DockingStation.new([bike])  }

  it 'has no bikes' do
    expect(DockingStation.new).not_to have_bikes
  end

  it 'can be created with bikes' do
    expect(station).to have_bikes
  end
  
  it 'can release a bike' do
    station.release_bike
    expect(station).not_to have_bikes
  end

  it 'does not release a broken bike' do
    broken_bike = double :bike, broken?: true
    station = DockingStation.new([broken_bike])

    station.release_bike

    expect(station).to have_bikes
  end

  

end