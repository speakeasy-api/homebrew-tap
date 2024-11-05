# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14251 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.425.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.425.1/speakeasy_darwin_amd64.zip"
      sha256 "19a9f3698cd7b172779d038b8adff23c49453ec11eed021e0c54805f52846504"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.425.1/speakeasy_darwin_arm64.zip"
      sha256 "a16fa1040a12ebc467ce78d0bf6496591f7e01ea85c0051eceb51d91f5357ddb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.425.1/speakeasy_linux_amd64.zip"
        sha256 "e21c802aa79fb82764bea12f2b0f491ac96b90b827b4c0182b3a296ff4283738"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.425.1/speakeasy_linux_arm64.zip"
        sha256 "048c36d077ce2f7a5d7109595eb3a2bcbcd5131c0b278d5d00f5eade1f4bfc25"

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