# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.493.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.493.1/speakeasy_darwin_amd64.zip"
      sha256 "f95e4c05ab1e7d43143f0c266d44dcec33d8b2a7a690d6150b05384b0edac2cf"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.493.1/speakeasy_darwin_arm64.zip"
      sha256 "9a740f83512c3a394a7b69fb0b6ddb81fa54dcb08251e42fb4183f8963f4b4f8"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.493.1/speakeasy_linux_amd64.zip"
        sha256 "ba90e7cde4ccfed2aa0925aa9f475e051890482878bf561ab043f43c1891929a"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.493.1/speakeasy_linux_arm64.zip"
        sha256 "9461bd26435dc8b200286b667b218e6155116c368630f1471233c90b363974f8"

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
