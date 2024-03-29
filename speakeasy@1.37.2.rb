# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1372 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.37.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.37.2/speakeasy_darwin_amd64.tar.gz"
      sha256 "23208f0b2a1b6c42f2d5c97428e861eb6c193dc3086e80731e7268ca9c9cf6f5"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.37.2/speakeasy_darwin_arm64.tar.gz"
      sha256 "2bb0779dee82519b1c9932f84b6f8874937dcaab9a1c4e437c0c1d639c33d8c3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.37.2/speakeasy_linux_arm64.tar.gz"
      sha256 "c7e729c8f3eabf8c8ca448162764eb5c240ed7154cadd61f18882c7bbbbe7aad"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.37.2/speakeasy_linux_amd64.tar.gz"
      sha256 "99335d609e79e287170bbce9e7a58634dfb45f1a2c5e0249137a763b85850d24"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
