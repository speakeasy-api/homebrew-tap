# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14025 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.402.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.5/speakeasy_darwin_amd64.zip"
      sha256 "905870c145ba67ff1510db835b00b45ea457522d316bbe744a8f1a17f6993a1f"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.5/speakeasy_darwin_arm64.zip"
      sha256 "817d40092baa7aeef1bfd74b4eb994643bcab5cc46349060e63aea2c45baeee4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.5/speakeasy_linux_amd64.zip"
        sha256 "92a0d8b9adc3dac79a2fbb0297eda799d04192777a06b94b873d373aeae12c64"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.5/speakeasy_linux_arm64.zip"
        sha256 "b50b3ac130001d8cf9339ebb3a1708daf9e0d6330daf4bdafe9e4fd4e4e7175f"

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
