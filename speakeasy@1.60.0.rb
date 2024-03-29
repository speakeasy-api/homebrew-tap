# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1600 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.60.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.60.0/speakeasy_darwin_arm64.zip"
      sha256 "f7a0c01a2d24f34291871d445452ddd3907c2df5b810ba9b372ca807275dd0b6"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.60.0/speakeasy_darwin_amd64.zip"
      sha256 "d38d011028e50235a352319419cdf67bd491bb3e50652ceb94d53a9bbd21c808"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.60.0/speakeasy_linux_amd64.zip"
      sha256 "51f91563eeda303c88c9be8fff9b4325570e0224cc5d8cdfa65c84d090a0e17b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.60.0/speakeasy_linux_arm64.zip"
      sha256 "511634abe38f45054e1155dfae56f0466b00e3bc724f653a8630369d8e3fa0c3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
