# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14541 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.454.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.454.1/speakeasy_darwin_amd64.zip"
      sha256 "32a7a0298fbf52a49cdd034372e6ee23ae479018cfc7180854d7801766f01779"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.454.1/speakeasy_darwin_arm64.zip"
      sha256 "0305ca15e3a7cda40071e11b034e662a103ddc448c011eb7ff000a8f402603c7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.454.1/speakeasy_linux_amd64.zip"
        sha256 "b5e4951ac0c0725609ae620ed99819eea128a1a2c36f465a77172bb85e9f7f35"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.454.1/speakeasy_linux_arm64.zip"
        sha256 "afbcf5eba42b1328cd6b33ebfd117b043f06bf720bbefab669a10b9d53dbf386"

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
