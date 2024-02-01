# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11612 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.161.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.161.2/speakeasy_darwin_amd64.zip"
      sha256 "cda0c6abe7250a0c95331961ab43320a806cc89e337c8d4cbc70e25a8585e69a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.161.2/speakeasy_darwin_arm64.zip"
      sha256 "07b923e4f9e3867aa4db7ff9a1e303b5485bc89fa5ebf4ee199f5994efe9c158"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.161.2/speakeasy_linux_amd64.zip"
      sha256 "ecff19dda1e6afdfd83893a9a05ab62089592c9221b0da85bafb5b98ed4483b1"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.161.2/speakeasy_linux_arm64.zip"
      sha256 "c578fd819894125a5e10de6fafa83faa03e42152ed562f4abb50643c5a96e3f7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
