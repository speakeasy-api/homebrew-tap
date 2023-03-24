# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1187 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.18.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.18.7/speakeasy_1.18.7_Darwin_x86_64.tar.gz"
      sha256 "9a2e61696d35f7c6484f3777ea1072c55a030f11639a86df28bc677b62433112"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.18.7/speakeasy_1.18.7_Darwin_arm64.tar.gz"
      sha256 "002a5b42904a3f3128f52098b21f35ecbbcf4b64fad72ba6db72a4a07d8dc412"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.18.7/speakeasy_1.18.7_Linux_arm64.tar.gz"
      sha256 "19839fbe918d4011cd636d0b9cfe01f73039b162d4a2ca2c137a32c3016648b4"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.18.7/speakeasy_1.18.7_Linux_x86_64.tar.gz"
      sha256 "2022a0f690b930522617f271a95bf53319f7419a4292f1c3005a6e2434afd3e5"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
