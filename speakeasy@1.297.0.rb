# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12970 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.297.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.297.0/speakeasy_darwin_amd64.zip"
      sha256 "50f75221f373fbb870a7f4ea7eebb7d0117c88bd4977a2e12a65c46da6102077"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.297.0/speakeasy_darwin_arm64.zip"
      sha256 "61397be563a169f46a4271ab09bfa14e7d429b67c567489adf27c9790b43ffaf"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.297.0/speakeasy_linux_amd64.zip"
        sha256 "9a77f75ac9990afb90f4231638bff7c6d32220d6f5fa9f57591f1cf9d59b182c"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.297.0/speakeasy_linux_arm64.zip"
        sha256 "f563c0811f61e376028e2e838134ccd5043fc0e3c31e049519da201fb0fd9cc1"

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
