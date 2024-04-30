# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12723 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.272.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.272.3/speakeasy_darwin_amd64.zip"
      sha256 "a14ce5e69e50f06dd938e4b4ff5006c111a138391b5bff45d98fa48e5f919dfe"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.272.3/speakeasy_darwin_arm64.zip"
      sha256 "7395779cf3d02e0875d84bb67950466b0d57b254a1ea5dbeacb95c0dc6ad1f4a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.272.3/speakeasy_linux_amd64.zip"
      sha256 "7b45bf3e16d7bb5e352f3585c57b23a1e909fab0bf8b0d80562bd38465397e55"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.272.3/speakeasy_linux_arm64.zip"
      sha256 "15308bbc2b0c8a62228febc5e906b60c3895d217e706ea0b2c70736b8135a76f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end