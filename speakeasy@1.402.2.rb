# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14022 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.402.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.2/speakeasy_darwin_amd64.zip"
      sha256 "d554acea7dd8e3f5f2833b5406c151360d774c798852eb1de4999d42c93a0ade"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.2/speakeasy_darwin_arm64.zip"
      sha256 "bbbb23773f7880434aaa1b7f2951ed42baf8b89f860982d89329e24c5d1d8fe6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.2/speakeasy_linux_amd64.zip"
        sha256 "a0901344bffe1d04043ac46d5ba3c8d52f7fcad282845591f04c0899b7e1752b"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.2/speakeasy_linux_arm64.zip"
        sha256 "7c52adbdfce2778006339ed549bee8c4d346197bfab6e5d20b2819ddfb9307f3"

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