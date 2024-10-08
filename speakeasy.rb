# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.417.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.417.0/speakeasy_darwin_amd64.zip"
      sha256 "62943e2ebd0d81c80a1ba4e6b9e4bc589d90e60425ca9cae5193bde6b00ffbb8"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.417.0/speakeasy_darwin_arm64.zip"
      sha256 "88282aa32f5f2ddac00152cfc3b6b3d600f2b510996d49c4ea47885f82a42a13"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.417.0/speakeasy_linux_amd64.zip"
        sha256 "37089619454889333eed7c6d583eb15e45d3e6edecabe2d68bcaaeac1756c8d0"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.417.0/speakeasy_linux_arm64.zip"
        sha256 "7be740c94af307c63895c5c595547ce3fed50524933df7ac4baa80aa9fafa5f6"

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
