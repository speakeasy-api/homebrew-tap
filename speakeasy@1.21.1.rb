# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1211 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.21.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.21.1/speakeasy_1.21.1_Darwin_arm64.tar.gz"
      sha256 "e577bfaaf659d1d3f5a4abf4ebb6440237382a05eb61f39ab9215b82d10b9bbb"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.21.1/speakeasy_1.21.1_Darwin_x86_64.tar.gz"
      sha256 "d6faed6ed0a90c37ab6dc43620683597487316677c08d20f9dde6bbdbcdc207d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.21.1/speakeasy_1.21.1_Linux_arm64.tar.gz"
      sha256 "f4fc7072e71a4080e29b50614a0da088413e78163b0d3052518dcb02b9767432"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.21.1/speakeasy_1.21.1_Linux_x86_64.tar.gz"
      sha256 "f525c0c6418cbf92448754a5c1ba139691211e860bd6168b9e966321c28275ac"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
