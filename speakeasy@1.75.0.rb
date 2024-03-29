# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1750 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.75.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.75.0/speakeasy_darwin_arm64.zip"
      sha256 "359703208a8b6990384407aa2c74b17892e86646ac38b09a21109b579d7b3ea7"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.75.0/speakeasy_darwin_amd64.zip"
      sha256 "c5ecc12d1c545ddced107a85e93c460038f77d1e6ac5ad56e754e655d38586b3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.75.0/speakeasy_linux_arm64.zip"
      sha256 "655784214fa105900ab74af7876c2fbff78c343dda4467112c5be111ddf70b4b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.75.0/speakeasy_linux_amd64.zip"
      sha256 "4e818e42c838115a516b89a6782f4e1c801d6c95141bd1cdb17a28fb887a61c8"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
