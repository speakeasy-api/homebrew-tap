# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13510 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.351.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.351.0/speakeasy_darwin_amd64.zip"
      sha256 "bc1804bfa596c098415ba9cc2f2e0d8fbaa359d1aa93fe1a979748502aab9b52"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.351.0/speakeasy_darwin_arm64.zip"
      sha256 "375dbd4f4043455517c47e83979f3f854100a62ab5ab607aa93c13b848cb0e2e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.351.0/speakeasy_linux_amd64.zip"
        sha256 "79e1b3a0896c82c5bfc271044fe50580d375a96827771447cee9611c34f21d16"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.351.0/speakeasy_linux_arm64.zip"
        sha256 "cce8f6414c0bc11cf43324cb755c4b68653b5c4aa180a2c2ca1b0ef52f1508d9"

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
