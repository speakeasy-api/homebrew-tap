# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1280 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.28.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.28.0/speakeasy_1.28.0_Darwin_arm64.tar.gz"
      sha256 "824069f54771269886e41110e5b1410885d58ee4db46268fdb909cbefc66c2ca"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.28.0/speakeasy_1.28.0_Darwin_x86_64.tar.gz"
      sha256 "fb613a9dee2f12cdffff4c6a450ae4476032a133eb2e1dd7e3d625286d2b7a99"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.28.0/speakeasy_1.28.0_Linux_arm64.tar.gz"
      sha256 "d8c6c939c6a0c07c95638b415920c78a81edebb154ab67183b8c96b953e81257"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.28.0/speakeasy_1.28.0_Linux_x86_64.tar.gz"
      sha256 "29ac9a4cffece6ceaf0c6977c317bd9057a41cfd0507ac0ccad2b6a791ec72c4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
