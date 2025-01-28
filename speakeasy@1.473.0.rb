# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14730 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.473.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.473.0/speakeasy_darwin_amd64.zip"
      sha256 "26f567a234d46ef4d94c89102420f34ffbf53751b405194fc056aa4ddd3b9073"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.473.0/speakeasy_darwin_arm64.zip"
      sha256 "6c729e7bbd18cbbce1cad054156ed4b5c6eaf584302e37b5e4b78248a2357573"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.473.0/speakeasy_linux_amd64.zip"
        sha256 "048a5de14d12b927e5fc1e8cecf8aeb321e617617fa849adddab829ae9637279"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.473.0/speakeasy_linux_arm64.zip"
        sha256 "9f53b0413ee1eb2fea60fca287fa3a8d5a44bb46c363ab8cc4cbf0022d5a8a22"

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