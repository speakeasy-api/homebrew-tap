# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14535 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.453.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.5/speakeasy_darwin_amd64.zip"
      sha256 "16bf2014f903a8834295ebe75aae5b824ea06056465059244560889243acb4f3"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.5/speakeasy_darwin_arm64.zip"
      sha256 "eed95ce2aafd6b8935de8a1d10e8b49930d37db5104fc86f938b4b67d18ec143"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.5/speakeasy_linux_amd64.zip"
        sha256 "92d8e897ff2afa0d9ccdd2cc39c82679a6b1f4943f038e2ea3fe08452b2713e7"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.5/speakeasy_linux_arm64.zip"
        sha256 "53ee7e3f24451da662084f7ebdad1f8a59c08b05867b6d31b791f8cefa577fb5"

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