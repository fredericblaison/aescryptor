# Aescryptor

# Aescryptor - AES encryption / decryption for Ruby

## Installation

Add this line to your application's Gemfile:

    gem 'aescryptor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aescryptor

## Usage

    data   = "your secret message"
    salt   = "1b9f0a41150ab61afcc20941cf0af6783d505b12b91a8e752df1a8501358dfe2235bf01b08fcbc2f304f4df099125dd599a097e88034b5323b0719f152fc7f5c"
    cipher = "AES-256-CBC"

Encrypting

    encrypted_data = encrypt(data, key, iv, cipher)

Decrypting

    decrypted_data = decrypt(encrypted_data.to_s.encode('UTF-8').force_encoding('ASCII-8BIT').encode('UTF-8'), key, iv, cipher)

## Usage in irb

    require 'aescryptor'

    Encrypting

        encrypted_data = Aescryptor.encrypt(data, key, iv, cipher)

    Decrypting

        decrypted_data = Aescryptor.decrypt(encrypted_data.to_s.encode('UTF-8').force_encoding('ASCII-8BIT').encode('UTF-8'), key, iv, cipher)


## Author

Oliver Jesus De Quintos


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request