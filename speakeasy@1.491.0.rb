# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14910 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.491.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.491.0/speakeasy_darwin_amd64.zip"
      sha256 "2d95f6bf2039de5b7e8b40311b0ca3c52dcf854e4921a3e9b1dbb0a634f61d6a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.491.0/speakeasy_darwin_arm64.zip"
      sha256 "eff105bb7f707ee5181a228b7f6403e4223689da9c5235ba9310769755fc23eb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.491.0/speakeasy_linux_amd64.zip"
        sha256 "e9dc6de4f0be1e17566221bde084da1151320f0086c662daaadae9a51456e398"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.491.0/speakeasy_linux_arm64.zip"
        sha256 "784635b3ec42ce4097a66e6aedde0d9e4aa4987b1174d67855bf6d518e7efa32"

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
