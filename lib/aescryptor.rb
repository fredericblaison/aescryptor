require "aescryptor/version"
require 'openssl'
require 'digest/sha2'

module Aescryptor
  class << self

    def decrypt(encrypted_data, key, iv=nil, cipher_type="AES-256-CBC")
      aes = OpenSSL::Cipher::Cipher.new(cipher_type)
      aes.decrypt
      aes.key = key
      aes.iv = iv if iv != nil
      aes.update([encrypted_data].pack("H*")) + aes.final
    end

    def encrypt(data, key,  iv=nil, cipher_type="AES-256-CBC")
      aes = OpenSSL::Cipher::Cipher.new(cipher_type)
      aes.encrypt
      aes.key = key
      aes.iv = iv if iv != nil
      (aes.update(data) + aes.final).unpack("H*")[0]
    end

  end
end
