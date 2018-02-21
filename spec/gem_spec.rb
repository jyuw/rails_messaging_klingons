require 'rails_helper'

RSpec.describe User do

  kalle = described_class.new(name: 'Kalle', password: 'passord123', email: 'kalle@kalle.no')
  holger = described_class.new(name: 'Holger', password: 'passord123', email: 'holgeer@kalle.no')

  it 'is expected to have a name' do
    expect(kalle.name).to eq 'Kalle'
  end

  it 'is expected to have a name' do
    expect(holger.name).to eq 'Holger'
  end


end



