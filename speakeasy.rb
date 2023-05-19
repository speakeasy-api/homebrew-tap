# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.35.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.1/speakeasy_1.35.1_Darwin_x86_64.tar.gz"
      sha256 "a900f4d6db996ad5938b88256d1a78af03a038687039853ba901fb2ad55e1266"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.1/speakeasy_1.35.1_Darwin_arm64.tar.gz"
      sha256 "1df860fd5a9beeb57c2d232aa5754afd492fb27968da896495c662e716c02af5"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.1/speakeasy_1.35.1_Linux_x86_64.tar.gz"
      sha256 "5f59585194f2832796cc1a8d0977cbf7c7856c5ef383af77473a636c5ee0427a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.1/speakeasy_1.35.1_Linux_arm64.tar.gz"
      sha256 "18163a113bc04b5d2face6e836225cb38d55140a118a2c00ecfbc668813bdf9b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
