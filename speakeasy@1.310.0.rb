# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13100 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.310.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.310.0/speakeasy_darwin_amd64.zip"
      sha256 "3bf44e6e1258f2cc9cc66eff841e5d83b9502adb1b2fa71cbc0d2807404173a4"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.310.0/speakeasy_darwin_arm64.zip"
      sha256 "4210d29ef351bb5a78b0b5ead8e62e2d86c3e647858a528266b1f750d691ca8f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.310.0/speakeasy_linux_amd64.zip"
        sha256 "579b4e2d1c563c691f09b5fc2ce6feced1c5d540ad30d4f0cec0cb2ae429ee11"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.310.0/speakeasy_linux_arm64.zip"
        sha256 "92f23af74da9942ab0b91e0a7b2d4fd22b51d1292cade5a0bc1db1ff48196146"

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