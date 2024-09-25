# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT140213 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.402.13"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.13/speakeasy_darwin_amd64.zip"
      sha256 "a723d94865469aac1cb9d9ad2106a0f807347727914a1b3f5fa3727ec65d0ad4"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.13/speakeasy_darwin_arm64.zip"
      sha256 "d336b4c198d8fec93b15dc3806d5f5a4feb9c89c5aeb6dc6d78330e6dab0a478"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.13/speakeasy_linux_amd64.zip"
        sha256 "396bcf20359a214d93385e20115fb9d67ce75a9cf0a1c022d9c6d39b3fc661f3"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.13/speakeasy_linux_arm64.zip"
        sha256 "d9367e16e9e97f7489698e810cdad8438c2a16bdb4d75382a99cc8764c668553"

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