# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13512 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.35.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.12/speakeasy_1.35.12_Darwin_x86_64.tar.gz"
      sha256 "23e31159ac4f630a22c1125ade9d2d6aab7a8cbf3d045202f1ac596e4d8bb789"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.12/speakeasy_1.35.12_Darwin_arm64.tar.gz"
      sha256 "f068abc48349d3ed81840c2de1681f4063a5dd48c1f6324fa03869135d6fee49"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.12/speakeasy_1.35.12_Linux_x86_64.tar.gz"
      sha256 "301b5195031f49c351c015413d1bfd605fc702eb82ba7ee31dc8bfd4ff3d1023"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.12/speakeasy_1.35.12_Linux_arm64.tar.gz"
      sha256 "80f534d0dad15ad8a394ef476a99e1eb550d0bf566032f1131f4eba5e2cb3b7f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
