# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14340 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.434.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.434.0/speakeasy_darwin_amd64.zip"
      sha256 "590dd1ed47db1ddd29e003941bb1b29c033960af6e137a5dbcc4bc5d1de10d5f"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.434.0/speakeasy_darwin_arm64.zip"
      sha256 "da263bd3bf99331716f49b911637723d79ee4ddb393dd814bd52f9879479bb1c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.434.0/speakeasy_linux_amd64.zip"
        sha256 "3c2cd9f398cf02892ea00ca8dc5662724b3e09cc3ab8d9c0652dfb7ef89629a0"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.434.0/speakeasy_linux_arm64.zip"
        sha256 "dc958a6a3c3b90c8b63d7457533517b999e39ab3aace8a4e2ef970bbc4d77811"

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