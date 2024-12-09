# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14537 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.453.7"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.7/speakeasy_darwin_amd64.zip"
      sha256 "96265de3726b046d06e141137add3945d1101c07015e63d93a8dd50ccd089380"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.7/speakeasy_darwin_arm64.zip"
      sha256 "e288e0e34121e45457206c536c801498a72cd2fb24739670de8d766f2e3d7dd1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.7/speakeasy_linux_amd64.zip"
        sha256 "4b99e3354e735480a67a7c743f17411e816dc5413b9f81b71f3b8c97503c2737"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.7/speakeasy_linux_arm64.zip"
        sha256 "2991d790fddab9f2f4c85081e171d2cf0ecc7a2198d225c48f68485d2dc866cb"

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
