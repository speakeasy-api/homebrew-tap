# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "0.18.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.18.1/speakeasy_0.18.1_Darwin_x86_64.tar.gz"
      sha256 "e79400d08bcd77bec7a2b908cbc5f5d14d2b4d568aabc2a28aaf0df65d0e5f0c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.18.1/speakeasy_0.18.1_Darwin_arm64.tar.gz"
      sha256 "e7798dc1521e7ec4ad5fff664b2e9d489213d442de95ad1c1aab42ce18e853f2"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.18.1/speakeasy_0.18.1_Linux_arm64.tar.gz"
      sha256 "5ac2342e8d893abe50520bd3188f7125845df626b04eb99d038149a37441827e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.18.1/speakeasy_0.18.1_Linux_x86_64.tar.gz"
      sha256 "c12c813badbaf2cc4c3a97f707170bd978b6c8b17236f3217eb02f6bbcc20d40"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
