# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.396.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.6/speakeasy_darwin_amd64.zip"
      sha256 "1b1f7f70a36b479eafd2100703f65cac2309fd94afc59f433d90d188184f6768"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.6/speakeasy_darwin_arm64.zip"
      sha256 "655a030663d6a0239e0c2214773dfe4660c352840780c2f928456d83e08d572f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.6/speakeasy_linux_amd64.zip"
        sha256 "be9dbf63906515e70b3b80b642af10145f757fc0c31013ebd9b4eb6348f0edc1"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.6/speakeasy_linux_arm64.zip"
        sha256 "bad0ef03e1a11f5f87a61a80390cffabcc0f2d2d3c403db791f7a414c487f279"

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
