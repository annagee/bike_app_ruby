require_relative  '../lib/bike'

# We're describing the functionality of a specific class, Bike
describe  Bike  do

  let(:bike) { Bike.new }

  # this is specific feature or behaviour
  # that we EXPECT to have
  it 'should not be broken when created' do 
    # Instantiate a new instance of the Bike class
    expect(bike.broken?).to be false
    # expect (bike.broken?).not_to be ture
      
  end

  it 'should be able to break' do
    bike.break
    expect(bike.broken?).to be true 
  end

  it 'should be able to get fixed' do
    bike.break
    bike.fix
    expect(bike.broken?).to be false
  end 


end