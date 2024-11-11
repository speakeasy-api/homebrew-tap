# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14380 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.438.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.438.0/speakeasy_darwin_amd64.zip"
      sha256 "7735aaa829ebfa58b77e1e47a8d93477501d5bd97dc424ce4da4787472f71339"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.438.0/speakeasy_darwin_arm64.zip"
      sha256 "91f5131726e75af6cbeafde2c4e687a40af8e7ba1ecc37b92ece82265d892d38"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.438.0/speakeasy_linux_amd64.zip"
        sha256 "5aca24910efc4401fd116b2e241ff561984684d54719861efef5986cd3efeaa5"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.438.0/speakeasy_linux_arm64.zip"
        sha256 "3dda5f28b112bfd0f844b2cf8da5bea063a2b5e320fe25926e860574c639a0c1"

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
