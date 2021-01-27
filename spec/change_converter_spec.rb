require 'change_converter'

describe '#convert' do
  change_converter = ChangeConverter.new
  it 'should accept 0.00 and return []' do
    expect(change_converter.convert(0.00)).to eq []
  end
end
