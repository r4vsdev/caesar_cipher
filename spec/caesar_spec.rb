# frozen_string_literal: true

require './lib/caesar'

describe '#caesar' do
  it 'shifts the entire word by the given amount' do
    expect(caesar('hello', 3)).to eq('khoor')
  end

  it 'handles uppercase letters correctly' do
    expect(caesar('HELLO', 3)).to eq('KHOOR')
  end

  it 'handles a mix of uppercase and lowercase letters' do
    expect(caesar('HeLLo', 3)).to eq('KhOOr')
  end

  it 'handles non-letter characters correctly' do
    expect(caesar('Hello, world!', 5)).to eq('Mjqqt, btwqi!')
  end

  it 'handles shifts greater than 26' do
    expect(caesar('hello', 30)).to eq('lipps')
  end

  it 'handles shifts less than -26' do
    expect(caesar('hello', -30)).to eq('dahhk')
  end
end
