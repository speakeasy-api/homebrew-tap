# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.331.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.331.0/speakeasy_darwin_amd64.zip"
      sha256 "4b796fde81db1f3bb1024f2513ec3078ca399cccebb030685eba3134b5b9c71c"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.331.0/speakeasy_darwin_arm64.zip"
      sha256 "6791e7888419e6218c6a092f34448c43cd32b4e0ea9ab72608ebee9054ebe5b4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.331.0/speakeasy_linux_amd64.zip"
        sha256 "03d623b4463e8428d682ff14dfe03b3fd8877939743d040f9c4bbe73172c5f14"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.331.0/speakeasy_linux_arm64.zip"
        sha256 "bff6b4db5f6601ace0e7e215c3865309729eaa0e84e4fc12d93121f55bef83ec"

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
