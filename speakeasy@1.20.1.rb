# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1201 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.20.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.20.1/speakeasy_1.20.1_Darwin_x86_64.tar.gz"
      sha256 "54ab36b31d6f4d9be50578cfe853af9c568b574c693e0a4427f6d53c656e0c29"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.20.1/speakeasy_1.20.1_Darwin_arm64.tar.gz"
      sha256 "df89cd068b99c73a9bb40e78ffb70b5955601f5325c2ab6e6c551987f4f0ba88"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.20.1/speakeasy_1.20.1_Linux_arm64.tar.gz"
      sha256 "fd1c984875592e7846428d1b882e32013e3d2eb6b28818cdda281879c32d3d55"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.20.1/speakeasy_1.20.1_Linux_x86_64.tar.gz"
      sha256 "afe2e5a893de8a95b753938878326455f58af754c443731f4e414a51301c97e7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
