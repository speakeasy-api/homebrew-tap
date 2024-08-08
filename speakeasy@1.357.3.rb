# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13573 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.357.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.357.3/speakeasy_darwin_amd64.zip"
      sha256 "0f92858bd7dd14c2beb487c5f678676aa0c69e6b03c530e15b9f4adab0ec502f"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.357.3/speakeasy_darwin_arm64.zip"
      sha256 "0ced96997e3f6fa69f9926b87b5ab6bf3597c9ff8e2039c2b1924a1b40e7fe8e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.357.3/speakeasy_linux_amd64.zip"
        sha256 "5e460abc0356a4f76364bcba86c0b2226047fa60aaad6e2fd19ab7c7418fa1a0"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.357.3/speakeasy_linux_arm64.zip"
        sha256 "e9ec3adee0e19c9c195bc9397f5d8718d6f66944f9ea5c5fbd28a6f4e71aad02"

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
