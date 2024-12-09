# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.453.8"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.8/speakeasy_darwin_amd64.zip"
      sha256 "91f18521217c8121b54210b9f26c362887462c652e17a6887a3e96be5bc5670f"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.8/speakeasy_darwin_arm64.zip"
      sha256 "b5eadf7a880b696465f94ab06b509c1099c3fc7e56c29467202137bc6fd76bc4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.8/speakeasy_linux_amd64.zip"
        sha256 "631ce2310ab6afa5609e842c3c95fd83f29880252f6937765a2672eb3e28a9a7"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.8/speakeasy_linux_arm64.zip"
        sha256 "27f43ede8361ddbb03d62701c4882535b6ca48c54fd69d344e9b5b3dcfdc3894"

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
