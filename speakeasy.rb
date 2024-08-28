# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.381.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.381.4/speakeasy_darwin_amd64.zip"
      sha256 "26324f16e898ae839c79e5f3710aed8e7d80db7a54f9b2f04f19fea2cd4d121b"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.381.4/speakeasy_darwin_arm64.zip"
      sha256 "b9980c6f4944f316dbf5a7bbb4d628fd81db77e6eefa4b1bf807bbdaf9257fcf"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.381.4/speakeasy_linux_amd64.zip"
        sha256 "3cf36b717256074c22b16263cc194a290a2a6171d2a8638d3b5e5a1e5ad0f698"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.381.4/speakeasy_linux_arm64.zip"
        sha256 "5d60bf67b6cd568642c685f5a28ea585f1e270824b926e73695e9042c1464879"

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
