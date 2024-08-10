# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13520 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.352.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.352.0/speakeasy_darwin_amd64.zip"
      sha256 "f1522147a828766116932ed71f104fb21540915842c040991e30b1f5137428bd"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.352.0/speakeasy_darwin_arm64.zip"
      sha256 "54d807495d28b87cce80a4a20a85c4769105ec1387cdf41eeafd76eb8e898d9d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.352.0/speakeasy_linux_amd64.zip"
        sha256 "986889e6db739621dcc197b3c96245923698c7d82cf0bf0e3bf1fd3bb2eb745c"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.352.0/speakeasy_linux_arm64.zip"
        sha256 "c3a25d8c3a2c491a1c1000737f5d2d3d168153cf033db4ef8371f035d90c3282"

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