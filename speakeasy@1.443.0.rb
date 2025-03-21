# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14430 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.443.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.443.0/speakeasy_darwin_amd64.zip"
      sha256 "f69ce551750275d3ebcda48e212cfebc6c6cb5e1f5fb1947b54a7d4a01a6a1ae"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.443.0/speakeasy_darwin_arm64.zip"
      sha256 "ee5a0d0649be6263007e5896e4f606ef575242924e105f6642ae69048c4877dc"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.443.0/speakeasy_linux_amd64.zip"
        sha256 "762c698e28341b7534a94561b7ed35c6bc42a79578639297e4c0b38a7a522fcc"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.443.0/speakeasy_linux_arm64.zip"
        sha256 "fd856e68e28b39a0b656114ab1a1aa5f87ece06da112b3711ee50ac14bc1af46"

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
