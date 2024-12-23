# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.459.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.459.3/speakeasy_darwin_amd64.zip"
      sha256 "e79f5b88d1b0092b96f9173dbd2be33da2c8d4dd3c7400b8f5373f13cc66abd8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.459.3/speakeasy_darwin_arm64.zip"
      sha256 "7a9808df80a0bfb59f5baf557fdfb00e86c18f93092ee3237b0188336c3775a9"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.459.3/speakeasy_linux_amd64.zip"
        sha256 "7a61d79d968bc77df224093b1bcbf2372628a9d35bc0c0002219e116a1d804e0"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.459.3/speakeasy_linux_arm64.zip"
        sha256 "490f7e6d92b74167eea5f2b56872085a0c4c8766ad881618b523353574442d2a"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
