# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1356 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.35.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.6/speakeasy_1.35.6_Darwin_arm64.tar.gz"
      sha256 "7b1b95549d952357cf42b543e0369489dfe95f20108c824399e80f0b3910a4fe"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.6/speakeasy_1.35.6_Darwin_x86_64.tar.gz"
      sha256 "00edc8f0dc754981ab16eace94d1499910d230200522eb3a3d6dce34d0db9050"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.6/speakeasy_1.35.6_Linux_arm64.tar.gz"
      sha256 "61234834c5ae3f67317dbd0c29490e3e0166238e7797f4f6f9942177e46c9894"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.6/speakeasy_1.35.6_Linux_x86_64.tar.gz"
      sha256 "c0f0b372681557da4f9e31a0efe8c600c7b993588cbc9edb6a22d72f6a5a7320"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
