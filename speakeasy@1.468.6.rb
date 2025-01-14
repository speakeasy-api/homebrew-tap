# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14686 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.468.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.6/speakeasy_darwin_amd64.zip"
      sha256 "6680ee897b79fe2ab25b649249c2afc9ee011f6fc4e515b3080936abf8109b88"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.6/speakeasy_darwin_arm64.zip"
      sha256 "28486e380d653547ac71e11fd65adf72cc4d2c0f7b50b775889fa08ec8125cad"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.6/speakeasy_linux_amd64.zip"
        sha256 "c90e7847af9f2af5097776707e950ad5dd3f8e9018584a88e33aec75a00bdd08"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.6/speakeasy_linux_arm64.zip"
        sha256 "f1a0db03c58d085f37537e0249dec3a393467f6143d91178795ad06ecd4b2261"

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
