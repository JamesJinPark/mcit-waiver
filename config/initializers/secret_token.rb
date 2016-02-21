# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
McitWaiver::Application.config.secret_token = ENV["SERCRET_TOKEN"]||'54569c27c3f47194deac40c3f2ac44157bea03d5d67fd61190d463f14708e20d2a5ff110e6d756fbceb92bc588c5dc3cee1afbc9f81aa8f0f1c277e55becec9b'
