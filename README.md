# encrypt-rails
Use https://github.com/attr-encrypted/attr_encrypted to encrypt AR model attributes.

##setup
```
$ git clone https://github.com/evanmthw/encrypt-rails.git
$ cd encrypt-rails
$ bundle install
$ export ENCRYPTION_SECRET='Some 256 bit string. Use SecureRandom.random_bytes(32) in the rails console to generate a key.'
$ rspec
```
