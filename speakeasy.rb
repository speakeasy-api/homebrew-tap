# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.13.0/speakeasy_1.13.0_Darwin_x86_64.tar.gz"
      sha256 "c3d267fadf48157d906f4a11aa267380c697693075f56970e20cb0fe48f4f839"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.13.0/speakeasy_1.13.0_Darwin_arm64.tar.gz"
      sha256 "2e233a81c5892789f969ac74b588a4d31a7bdea6f8f24ef2c6ba6d108ca50ad6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.13.0/speakeasy_1.13.0_Linux_arm64.tar.gz"
      sha256 "06f3ae38a30e0db3e3b5882c334eb774dedfd1d3c7d019c3ce194d2231cc2a1a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.13.0/speakeasy_1.13.0_Linux_x86_64.tar.gz"
      sha256 "497cdb3568bdc404a5f706859157ba5d236db7c816bf6cc137a9f988a3408640"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
