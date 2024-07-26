# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13461 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.346.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.346.1/speakeasy_darwin_amd64.zip"
      sha256 "4e7605d8a4cb5c426a2283a6947c89e7e39609bb4f469263de101ba61d9d6581"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.346.1/speakeasy_darwin_arm64.zip"
      sha256 "b7e64127b833b256b21f7cd11b9c74f484b9ed8220396888653fa53532815abd"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.346.1/speakeasy_linux_amd64.zip"
        sha256 "aeceaa05dfaaf00d13d6a03855cd0d6d504efd3f9baab3530c4de12ff642b527"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.346.1/speakeasy_linux_arm64.zip"
        sha256 "28609294e9f5fad461fc811160aefe8796e82d29cb0eace7f4c5ee7d2c01e0ca"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
