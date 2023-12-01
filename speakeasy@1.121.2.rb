# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11212 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.121.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.121.2/speakeasy_darwin_arm64.zip"
      sha256 "ef5ce08a526dfad00b1093695126fe004181125dd3e6ba3dbeef80c3fa826dd1"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.121.2/speakeasy_darwin_amd64.zip"
      sha256 "353f0b8472f5fb5bf73d62fecdd11a191c082490e8590e14f5ea6bec68a86e49"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.121.2/speakeasy_linux_amd64.zip"
      sha256 "0add2865ae259104ddac53ceb44049ba4e089ed48f0a1b24ff2ef0b74f4d5be1"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.121.2/speakeasy_linux_arm64.zip"
      sha256 "6db4e21a1894e85b7aa28ac6997e8a1ff039faf6e15b657b08e8fa4898d22538"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end