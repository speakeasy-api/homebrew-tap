# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "0.6.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.6.9/speakeasy_0.6.9_Darwin_x86_64.tar.gz"
      sha256 "6d8e7472dc21891f832c4afa7ac6aeffd65e310fc7a55c8e78886b287f4ddc94"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.6.9/speakeasy_0.6.9_Darwin_arm64.tar.gz"
      sha256 "d1660fd76f826415bec95f72b2b868a7329c6939024a8e37010745b3673b0890"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.6.9/speakeasy_0.6.9_Linux_x86_64.tar.gz"
      sha256 "5d6dda7259f5ebde3cac848c4d229dac6653c42f916939f122a4202759b5a62d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.6.9/speakeasy_0.6.9_Linux_arm64.tar.gz"
      sha256 "12ab396ec2c83fe6bf839a001aaa318d65aa0e3f8b663193e33ebc4a1d26eca0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
