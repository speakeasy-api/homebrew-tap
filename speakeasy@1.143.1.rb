# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11431 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.143.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.143.1/speakeasy_darwin_amd64.zip"
      sha256 "a93f0927de494165d9df6cebc74f391a54ea4d6babab6a8b47144fe193ab030f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.143.1/speakeasy_darwin_arm64.zip"
      sha256 "ac14bc615b6054a9602492dfe9db04a0ec993be8855f7e7f75729acb36839654"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.143.1/speakeasy_linux_arm64.zip"
      sha256 "ffa8f3c608d540af60062eb6bd064d243d8847b0deb210784f1edd8fbc79913f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.143.1/speakeasy_linux_amd64.zip"
      sha256 "8f2a0349f5401da3458580d7296076b86c569bb6a116728597d096d701e32b89"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
