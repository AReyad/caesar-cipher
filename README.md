# Caesar Cipher

An encryption tool based on the [Caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher) encryption technique.

## About

This project is part of the Ruby Progamming lessons of [The Odin Project](https://www.theodinproject.com/lessons/ruby-caesar-cipher/) curriculum.

## Features

- Encrypts text using a **right shift** version of the Caesar cipher.
- **Left shift encryption** is available via **negative integers**.
- Preserves case (uppercase/lowercase).

## Example

```ruby
caesar_cipher("A string!", 5)
# => "F xywnsl!"

caesar_cipher("A string!", -5)
# => "V nomdib!"
```