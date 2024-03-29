# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1150 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.15.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.15.0/speakeasy_1.15.0_Darwin_x86_64.tar.gz"
      sha256 "0b227b6d35a905fbd1aeeabc3dd355ff76027928c7b7c73ec5c1e10afd6665d9"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.15.0/speakeasy_1.15.0_Darwin_arm64.tar.gz"
      sha256 "212d086821ae9d15c98828fbc614b7c40ca25b6762622685dd4253d692bdc924"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.15.0/speakeasy_1.15.0_Linux_arm64.tar.gz"
      sha256 "32f5fe5a74c40afa0c4ed9fa465563e822729068109f102a5e2e586c9e4c56ca"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.15.0/speakeasy_1.15.0_Linux_x86_64.tar.gz"
      sha256 "5f06fe4cb42569d92f32af11dffd9cce3ab5a5e72afc90cbbfc5da17547b358d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
