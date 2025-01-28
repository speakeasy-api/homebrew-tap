# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14720 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.472.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.472.0/speakeasy_darwin_amd64.zip"
      sha256 "c4ef9c6b59a7dc733f8728e5d4d907ef9c2643aab0cc3d6438647618fd0c5ef4"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.472.0/speakeasy_darwin_arm64.zip"
      sha256 "4198a698b5036ed1c134240543c9216b333070c86c980c595b83b6d95fa3152c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.472.0/speakeasy_linux_amd64.zip"
        sha256 "c81f4de20863812e0befba8134ada874540307deef6772c363a28ed61388aee5"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.472.0/speakeasy_linux_arm64.zip"
        sha256 "44645db7c6ff958323ee46263264bc76a8dc4d2ad1d65753db6d9d020931203d"

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