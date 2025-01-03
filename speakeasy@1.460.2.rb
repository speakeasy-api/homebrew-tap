# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14602 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.460.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.2/speakeasy_darwin_amd64.zip"
      sha256 "29ac67830093a5dda21d5b1fe84b25c4f293a2342bc09789ac63796db1eeb1bb"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.2/speakeasy_darwin_arm64.zip"
      sha256 "f6a9e851165b0bdfa049d001e48a110f7470fdab693915f55d63704f231922cd"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.2/speakeasy_linux_amd64.zip"
        sha256 "117ee43672e5fe866eea76c171d7bd45e54ec863a262024a2df50422c28d3e45"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.2/speakeasy_linux_arm64.zip"
        sha256 "9c6406919d7bc44096fbefa725d613ece564b7c0a1a0c5dc24f15fe8edf6743e"

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
