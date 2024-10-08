# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13950 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.395.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.395.0/speakeasy_darwin_amd64.zip"
      sha256 "c8de6ddf8318ec37be34d35fc5ba2e4e8104a1207c2f63838703201cfd696ec8"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.395.0/speakeasy_darwin_arm64.zip"
      sha256 "8e0ed45ee99d951ebdc33842a856f25093e5659ede98a18400e433b09cc31600"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.395.0/speakeasy_linux_amd64.zip"
        sha256 "c963eb75e87c7d1b9c09eceb72f4c8c332c2228ea27b17483ed7cfcdcda65cd0"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.395.0/speakeasy_linux_arm64.zip"
        sha256 "892aad82b86cd565dcb4333b3d5c87526e676f42e5f53f1e462d9e77f72247c2"

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
