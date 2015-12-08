require 'spec_helper'

describe Aescryptor do
  it 'has a version number' do
    expect(Aescryptor::VERSION).not_to be nil
  end

  describe 'encrypt' do
    let(:key) { "1b9f0a41150ab61afcc20941cf0af6783d505b12b91a8e752df1a8501358dfe2235bf01b08fcbc2f304f4df099125dd599a097e88034b5323b0719f152fc7f5c" }
    let(:plaintext) { "my plain private text" }
    let(:cipher) {"AES-256-CBC"}
    let(:iv) {}

    it 'returns a non-nil string other than plaintext or the key' do
      result = Aescryptor.encrypt(plaintext, key, iv, cipher)
      expect(result).not_to be_nil
      expect(result).to be_a String
      expect(result).not_to match plaintext
      expect(result).not_to match key
    end
  end

  describe 'decrypt' do
    let(:key) { "1b9f0a41150ab61afcc20941cf0af6783d505b12b91a8e752df1a8501358dfe2235bf01b08fcbc2f304f4df099125dd599a097e88034b5323b0719f152fc7f5c" }
    let(:plaintext) { "my plain private text" }
    let(:cipher) {"AES-256-CBC"}
    let(:iv) {}

    it 'works' do
      result = Aescryptor.decrypt(Aescryptor.encrypt(plaintext, key, iv, cipher), key, iv, cipher)
      expect(result).to eq plaintext
    end
  end
end
