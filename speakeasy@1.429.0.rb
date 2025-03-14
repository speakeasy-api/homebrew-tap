# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14290 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.429.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.0/speakeasy_darwin_amd64.zip"
      sha256 "a1c34f92ebd58a814386f539157a6cace11291baf07d7962386e4f32a783cda2"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.0/speakeasy_darwin_arm64.zip"
      sha256 "55a42ccbc419009522ea127dad2a0fb5b9e1044e5b258eb84763f94cda67c4e3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.0/speakeasy_linux_amd64.zip"
        sha256 "ab149f7b7acc0c162b74392c2971413403ec2a19b2865efac0ce69a0ab7df3a1"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.0/speakeasy_linux_arm64.zip"
        sha256 "3ea197baa94ec1c099693a6999c414b0ddd7058bf3fe663413218c49768b36ce"

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
