require './caeser-cipher'

describe '#caeser_cipher' do
  it 'keeps lowercase letters lowercase' do
    expect(caeser_cipher('abcde', 1)).to eql('bcdef')
  end
  it 'keeps uppercase letters uppercase' do
    expect(caeser_cipher('ABCDE', 1)).to eql('BCDEF')
  end
  it 'changes a letter by the specified number' do
    expect(caeser_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end
  it 'does not change spaces' do
    expect(caeser_cipher(' ', 5)).to eql(' ')
  end
  it 'does not change special characters' do
    expect(caeser_cipher('!@#^&', 5)).to eql('!@#^&')
  end
end
