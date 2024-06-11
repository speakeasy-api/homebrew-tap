# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.303.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.303.1/speakeasy_darwin_amd64.zip"
      sha256 "5122cd469dcb4f29264353097a713f445597050ee1e8eb46de901d71e39adcc9"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.303.1/speakeasy_darwin_arm64.zip"
      sha256 "c845da0050b45cd8378dd478c7c39618fe7fad97d28d2478390b5ac281087e9d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.303.1/speakeasy_linux_amd64.zip"
        sha256 "0488ecc6d17e3e566cf11345f563dab47e08a41ea995b8f1f37221cf4dbbb247"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.303.1/speakeasy_linux_arm64.zip"
        sha256 "e5b5b89966988d9e326ccfb14300f12b32235dcbe88a7185d960fd8d6503afc8"

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
