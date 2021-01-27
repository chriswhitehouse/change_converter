require 'change_converter'

describe '#convert' do
  change_converter = ChangeConverter.new
  it 'should accept 0.00 and return []' do
    expect(change_converter.convert(0.00)).to eq []
  end

  it 'should accept 0.01 and return ["1p"]' do
    expect(change_converter.convert(0.01)).to eq ["1p"]
  end

  it 'should accept 0.02 and return ["2p"]' do
    expect(change_converter.convert(0.02)).to eq ["2p"]
  end
end
