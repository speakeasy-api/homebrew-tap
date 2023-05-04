# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1290 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.29.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.29.0/speakeasy_1.29.0_Darwin_arm64.tar.gz"
      sha256 "d01bbe6a0b4a3098275f1e14909c155e72d276bdbb23fc7ffd944151840c5891"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.29.0/speakeasy_1.29.0_Darwin_x86_64.tar.gz"
      sha256 "2093c2e5b8ae62103b971f8c84edd1c21fa5457f2c4cdcdd1b5d65250e789d9f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.29.0/speakeasy_1.29.0_Linux_x86_64.tar.gz"
      sha256 "d7eb88e665895cf000acbb6e25bcb93ed2a84bb25870b5146a2b2e696093e7a0"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.29.0/speakeasy_1.29.0_Linux_arm64.tar.gz"
      sha256 "296c823c94d96746ae876a9b7102c06ac326f99f7e507c122ba51136087678ef"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
