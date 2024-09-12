# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13963 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.396.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.3/speakeasy_darwin_amd64.zip"
      sha256 "04081222e8c74a236e7317eb368dee053837a751cda0e73764d2401dfecd6b4e"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.3/speakeasy_darwin_arm64.zip"
      sha256 "d175e3178b48640a6ec17cb8f9c4c414abe9bbdf968c1de43e66cbbc92a1f425"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.3/speakeasy_linux_amd64.zip"
        sha256 "1d00b07c0d7da174484a273ebcc063b67aaac50000c37684ef2fa22fef2e8e8f"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.3/speakeasy_linux_arm64.zip"
        sha256 "ba0885c04d6ce86b171b42522655202ad22c6e930849e38a298d6c7158509774"

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
