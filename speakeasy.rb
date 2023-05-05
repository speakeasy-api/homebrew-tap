# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.29.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.29.1/speakeasy_1.29.1_Darwin_x86_64.tar.gz"
      sha256 "9a492b6547c2e17b3a6626b327e3bbd9c3f46b08de50f8a38147f755514f5087"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.29.1/speakeasy_1.29.1_Darwin_arm64.tar.gz"
      sha256 "bd9036a6a5eb02812b5d3f71301b5653bec422aa53395f6d18becf7742969df7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.29.1/speakeasy_1.29.1_Linux_arm64.tar.gz"
      sha256 "e3513ec1fcef9b2a174e42fcf357567512ad7a90fa8b5bb5d751b3e8bd468784"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.29.1/speakeasy_1.29.1_Linux_x86_64.tar.gz"
      sha256 "192278fa4c67e2968eee4b9db049d17acc9e27530110ab36651c1a521ba734fb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
