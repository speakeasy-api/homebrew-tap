# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.282.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.282.0/speakeasy_darwin_amd64.zip"
      sha256 "01d0a615c1702505d072bf1043656eb2caa3eab1b1c62a6a2eebc4ad59819240"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.282.0/speakeasy_darwin_arm64.zip"
      sha256 "8c38986c24e3bd32d38a4a331aa3d12104e5cc9c41151323cc4f64fa4f7d9956"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.282.0/speakeasy_linux_amd64.zip"
      sha256 "fa028da72e5498b9a723ac820d791824308688f6cbe1925f88441ba26e6bc864"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.282.0/speakeasy_linux_arm64.zip"
      sha256 "1ea866592d1bbb47f80f80fe9aa00a95ad507f933ca6be71c522d2cec92f1108"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
