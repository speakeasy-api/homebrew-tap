# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1230 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.23.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.23.0/speakeasy_1.23.0_Darwin_x86_64.tar.gz"
      sha256 "2c289b51195cc9fd50060e2b3dcf978666fdceb07ad82f82aa2d8fae314ea80f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.23.0/speakeasy_1.23.0_Darwin_arm64.tar.gz"
      sha256 "f0137e2d747ddf312da0fcfc1150e43d6a20b1b60bb36f3b606194f5023fd815"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.23.0/speakeasy_1.23.0_Linux_arm64.tar.gz"
      sha256 "1b504b705cf229cdd1e126b609e0ddc062512f285a0abcd7d1fcc6de05ec9933"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.23.0/speakeasy_1.23.0_Linux_x86_64.tar.gz"
      sha256 "56066525b21e4f2b30aea3e8f1ab897ab1f1e031e510cbdd27d984816ea3b61d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
