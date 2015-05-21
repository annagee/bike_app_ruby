
require_relative '../lib/van'

describe Van do

  def fill_van(van)
    40.times{ van(Bike.new) }
  end  
 
  let(:bike) { Bike.new }
  let(:van) { Van.new(:capacity => 40) }

  it "should be able to accept a bike" do
   van = Van.new 
   bike = Bike.new 

   expect(van.bike_count).to eq 0

  end 

  it "should know when it's full" do
    expect(van.full?).not_to be true
    40.times { van(Bike.new) }
    expect(van.full?).to be true
  end  

   it "should release a bike" do
    van(bike)
    van.release(bike)
    expect(van.bike_count).to eq 0
   end
end  
