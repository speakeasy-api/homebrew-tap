# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.429.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.1/speakeasy_darwin_amd64.zip"
      sha256 "40dfb2cb62a2e2068787ccc6e41d2c7c5d65169f0a1d6b07951088fc1bc21433"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.1/speakeasy_darwin_arm64.zip"
      sha256 "23ebfb0c5a9cb253ff0087b692266ef0410019de00080ef74793946d69d755cc"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.1/speakeasy_linux_amd64.zip"
        sha256 "008f30213c85f91ed526cd3605b7b088651ed8d2b3cc69fbfc3529a96ea04c17"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.1/speakeasy_linux_arm64.zip"
        sha256 "b9a46f2c4c3a533df3e650217bb3717322f7965d48b06da23515d6da8987f285"

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
