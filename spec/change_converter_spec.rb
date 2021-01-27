require 'change_converter'

describe '#convert' do
  change_converter = ChangeConverter.new

  it 'should accept 0.01 and return ["1p"]' do
    expect(change_converter.convert(0.01)).to eq ["1p"]
  end

  it 'should accept 0.02 and return ["2p"]' do
    expect(change_converter.convert(0.02)).to eq ["2p"]
  end

  it 'should accept 0.05 and return ["5p"]' do
    expect(change_converter.convert(0.05)).to eq ["5p"]
  end

  it 'should accept 0.03 and return ["2p", "1p"]' do
    expect(change_converter.convert(0.03)).to eq ["2p", "1p"]
  end

  it 'should accept 0.08 and return ["5p","2p", "1p"]' do
    expect(change_converter.convert(0.08)).to eq ["5p","2p", "1p"]
  end

  it 'should accept 0.04 and return ["2p","2p"]' do
    expect(change_converter.convert(0.04)).to eq ["2p","2p"]
  end

  it 'should accept 0.44 and return ["20p", "20p","2p","2p"]' do
    expect(change_converter.convert(0.44)).to eq ["20p", "20p","2p","2p"]
  end

  it 'should accept 0.44 and return["£5", "£1", "£1", "20p", "20p", "2p"]' do
    expect(change_converter.convert(7.42)).to eq ["£5", "£1", "£1", "20p", "20p", "2p"]
  end

  it 'should accept 40 and return["£20", "£20"]' do
    expect(change_converter.convert(40)).to eq ["£20", "£20"]
  end
end
