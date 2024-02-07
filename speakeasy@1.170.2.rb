# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11702 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.170.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.170.2/speakeasy_darwin_amd64.zip"
      sha256 "167205358bf2c713ae4327dd299867621f1d33e3b3cfaee3385d40a847987457"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.170.2/speakeasy_darwin_arm64.zip"
      sha256 "3f5ed6cdb3104ce9ffbec034845dc948a5c2af87db8aaafb7c5899cb8f610958"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.170.2/speakeasy_linux_amd64.zip"
      sha256 "6baf93a1f051cd70cd398692e153162880050838b8a856f1d7d2d99c75c50afc"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.170.2/speakeasy_linux_arm64.zip"
      sha256 "823ff408ea56dc9ea34a035508ab13b413026b4df6a86f07c2d67f368eaf6425"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
