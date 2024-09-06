# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13913 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.391.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.391.3/speakeasy_darwin_amd64.zip"
      sha256 "6bf47f5fd534dd5b1d1c1e9983f9ef96eb8ca50b388da1e84d91f277178af009"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.391.3/speakeasy_darwin_arm64.zip"
      sha256 "57a1d68d072a27ef7fc67729697cc222850f1131ccc8156205562f08abbbdf7d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.391.3/speakeasy_linux_amd64.zip"
        sha256 "a960e6e9fded9fd6bf1a074e82b0b689238e40d9f1a5edf49ad5912d09a1b258"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.391.3/speakeasy_linux_arm64.zip"
        sha256 "1ecf396262dab1766a217670966789fa4dd2f9ebf7bba64b62cccdb07977f368"

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
