# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14090 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.409.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.409.0/speakeasy_darwin_amd64.zip"
      sha256 "163b267338c6fc410dd4bc1c9fd0e036b272e0fbbf8f1c42a955659a4881f8f0"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.409.0/speakeasy_darwin_arm64.zip"
      sha256 "b0f87d6da6735c5fe28b084263ac2c90c1490e87e8fade66448654bd1b0acc65"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.409.0/speakeasy_linux_amd64.zip"
        sha256 "77b8d4971505da8efac5d1aba0cf21aafe019c1238504f53d5385e7e64671339"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.409.0/speakeasy_linux_arm64.zip"
        sha256 "76c26c315da91e1b4d2ce3d4f98c15603e0d9c159f3c2b9be4856b1ee8630b69"

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
