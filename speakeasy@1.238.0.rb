# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12380 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.238.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.238.0/speakeasy_darwin_amd64.zip"
      sha256 "52723e1217041e1516e11fb85671d4fb039f22dfbf2a2184601dc7c188074b8c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.238.0/speakeasy_darwin_arm64.zip"
      sha256 "1a25bf3c1621ef06a8cb85528567e627fc36c66fa8ada705a4074a1eda0cdd6d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.238.0/speakeasy_linux_amd64.zip"
      sha256 "361ae78e11b1f1eccd237e1cbdbfe1167a8977b0f241f104a9c066db2581bb66"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.238.0/speakeasy_linux_arm64.zip"
      sha256 "e8828a415b443b9967211078460183664ad660e92027ce12165780afeb3588a4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
