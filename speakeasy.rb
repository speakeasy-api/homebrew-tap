# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.476.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.476.0/speakeasy_darwin_amd64.zip"
      sha256 "ffd09eb50c2ffe36e42b75021331a1de54cb3cd53256dbb9fbf7c86c3ad585b5"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.476.0/speakeasy_darwin_arm64.zip"
      sha256 "c7f168e6723ae1dfd0d52a38d940e3d3b91d402a4108dcdf3c900b1c9c5fcbf1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.476.0/speakeasy_linux_amd64.zip"
        sha256 "49266ed45e62c1a5674c4d93adb732d6c18137fe46ca5165591cd44b5a789b22"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.476.0/speakeasy_linux_arm64.zip"
        sha256 "1888cdba7718e0f39cafabd226ef779e22edf92b707213ecdce4062b16f927b8"

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
