# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13600 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.360.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.360.0/speakeasy_darwin_amd64.zip"
      sha256 "b5fcf2296ebceee511a00b7271a5a6eb7cb29149b892bde537d5d06273e8e8ab"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.360.0/speakeasy_darwin_arm64.zip"
      sha256 "78d7cbe3cc1daea57712b970424016d47785a324797857a43cab60f688bcc9fd"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.360.0/speakeasy_linux_amd64.zip"
        sha256 "5d7d71c8f4735b3348ca591642df15af98a08ea2ad8bc0344196a48989bf4c03"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.360.0/speakeasy_linux_arm64.zip"
        sha256 "9f2998a9ca537201a081bc4032f746b8e4da90ce56d9ee5438563467b3e47b28"

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
