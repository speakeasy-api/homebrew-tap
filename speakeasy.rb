# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.215.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.215.1/speakeasy_darwin_arm64.zip"
      sha256 "a38ad8d877129c5ef1045a515ebabe7fb3ccb67208669fa016c27487023345f2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.215.1/speakeasy_darwin_amd64.zip"
      sha256 "d77ddf0330bf8a7003c31a820c9304c0803896522ea081eb47ad92bc5f758b2b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.215.1/speakeasy_linux_arm64.zip"
      sha256 "76bfe18dd2508e63b04cdbb2b161a24e9a95c04c6b07695544ccf402d2f37f83"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.215.1/speakeasy_linux_amd64.zip"
      sha256 "07ab61d3827f6893517274fd3dab60068d297f077294d1dd147a48442c2cf1a5"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
