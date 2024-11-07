# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14342 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.434.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.434.2/speakeasy_darwin_amd64.zip"
      sha256 "069a2a2a5bf5b333bed0ffc525d49c851d6c6fce112c291a193cbf9933eaa756"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.434.2/speakeasy_darwin_arm64.zip"
      sha256 "f6ab6015532199050cb40849f0e36d57e4f5134735a66d933be2fd881606258b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.434.2/speakeasy_linux_amd64.zip"
        sha256 "d217acae9b6464473efc6652cef52c3049558a6b6f691ba06fbaf6ffc15e8e7e"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.434.2/speakeasy_linux_arm64.zip"
        sha256 "49ea041d9ddf6957863f5d5e573b0c7aba204e48ca0671ff5ee199ad985dbd0e"

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