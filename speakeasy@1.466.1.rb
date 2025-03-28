# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14661 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.466.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.466.1/speakeasy_darwin_amd64.zip"
      sha256 "6eba34f1311ce4247a9bbc9a277cd8b8689c08d52f82c936e26a6fb696c14a90"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.466.1/speakeasy_darwin_arm64.zip"
      sha256 "db6b6a481c248cd32753fd10567f37a88c2f164d1ce01d17f8ba5a380c903693"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.466.1/speakeasy_linux_amd64.zip"
        sha256 "d5494620f771187a07141d8dfba5de03915ce152c4522fb14fc3f87b07d00e49"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.466.1/speakeasy_linux_arm64.zip"
        sha256 "95d57380a00c50c44140c61d0084be1f17ccf6dabde4b340a134f83e6163e1a2"

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
