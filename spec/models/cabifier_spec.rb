require 'spec_helper'

VCR.eject_cassette
VCR.turn_off!
WebMock.disable!

 describe Cabifier do
     before do
      @cabifier = Cabifier.new
     end

  subject { app }


  it 'gets all cabs from Cabifys API' do
   cabs = @cabifier.getCabs()
   expect(4).to eq(cabs.size)
  end

  # it 'fails to get all cabs from Cabifys API' do
  #  cabs = @cabifier.getCabs()
  #  expect(0).to eq(cabs.size)
  # end

  it 'hires nearest cab' do
   expect('').to eq(@cabifier.cabify())
  end

  it 'fails to hire nearest cab' do
   expect('').to eq(@cabifier.cabify())
  end

  it 'calculates nearest cab' do
   cabs = @cabifier.getCabs
   destination = '40.4489254,-3.6708406'
   expect('something').to eq(@cabifier.calculateNearestCab(cabs, destination))
  end

  it 'fails to calculate nearest cab' do

  end
end