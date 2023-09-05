# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1788 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.78.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.8/speakeasy_darwin_arm64.zip"
      sha256 "30469ca36c118af9efb4ab7bdb360ff2d93bdb4bbd8e0609558a6ee5eaea2a7b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.8/speakeasy_darwin_amd64.zip"
      sha256 "3e1a8ac3ccb5d41559a153e4c13fefee8d39719aaa467909dd07496e3eec42a1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.8/speakeasy_linux_amd64.zip"
      sha256 "c2e09e65a238f3f6cc5da5f79521b845aedda4114a635e3435e9501fce8f8dc7"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.8/speakeasy_linux_arm64.zip"
      sha256 "05eca5d7acc60c923bdbdb2ec922ee83778b8052f37e6fca232919ad65788006"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
