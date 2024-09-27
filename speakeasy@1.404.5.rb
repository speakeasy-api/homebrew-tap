# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14045 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.404.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.404.5/speakeasy_darwin_amd64.zip"
      sha256 "0eb8481cee5ea33af89bb8d4e1e61550e8f52acc142778e27aa41b9de07dbb00"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.404.5/speakeasy_darwin_arm64.zip"
      sha256 "e3cdaf43b898f21d74ea732679c0c28c605065c10ac3bd987191dad04c6edaa6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.404.5/speakeasy_linux_amd64.zip"
        sha256 "6b18e5e1a960a45a3c776f95ab6b24775499a3039729f1ced820aa627cf5a334"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.404.5/speakeasy_linux_arm64.zip"
        sha256 "bff4296d8a59e0d6341606df0a0f2ca59d02fe3a5d9b804dc823044a35333948"

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
