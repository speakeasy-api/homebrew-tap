# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.21.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.21.4/speakeasy_1.21.4_Darwin_x86_64.tar.gz"
      sha256 "63b1abc2e4f1f180035d096812823035b173e2375ee1108b12dabb17de905a66"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.21.4/speakeasy_1.21.4_Darwin_arm64.tar.gz"
      sha256 "cf221d2afe62b8d118d0e4bb149ba26bbf7bb5a29ff81fad598cb5f5f1359869"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.21.4/speakeasy_1.21.4_Linux_arm64.tar.gz"
      sha256 "04afffbd07b391d11f1de3cf6e70cc344ea4740aa19c9d7bffa3ba3c116d15b3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.21.4/speakeasy_1.21.4_Linux_x86_64.tar.gz"
      sha256 "06e7d4044f1eceeb5f1926bb5b1ef412e86de4820838b27470377efcde69046d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
