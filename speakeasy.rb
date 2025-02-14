# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.493.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.493.0/speakeasy_darwin_amd64.zip"
      sha256 "ebcf612cb4f4e405b24a9b9715e16f59d94fd53d9ff990bd13d7e4c04ed77bb3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.493.0/speakeasy_darwin_arm64.zip"
      sha256 "7caae463a4cd32bb48c91778f2e00df826b3b1ed36f3b10b43708bb1112f532a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.493.0/speakeasy_linux_amd64.zip"
        sha256 "3b05618837246752d9ca289157314409a01b53f2638ac8703afea90e33d20361"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.493.0/speakeasy_linux_arm64.zip"
        sha256 "d93e2351c26753e511d2a9d03af593e9e102e58013d9087763fe434af12aa126"

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
