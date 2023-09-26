# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1825 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.82.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.82.5/speakeasy_darwin_amd64.zip"
      sha256 "e1c96594e006488dfa966076ef25a05bc30596e9b2e18ccf7659341c0b2705d8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.82.5/speakeasy_darwin_arm64.zip"
      sha256 "479746c392c7cb8ebdc1f629128f89b3b95f816c147fd8cf15216ee2987e8d84"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.82.5/speakeasy_linux_amd64.zip"
      sha256 "4b3ed3e1ca5b9f2b340c3649ad2136e977f59b8410c92e3ba07b85fa363bdea8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.82.5/speakeasy_linux_arm64.zip"
      sha256 "08bd6c1346ea8c96c893f22c7039541f9d1f0fe9fd1db2f928b16cd90b212859"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end