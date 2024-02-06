# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11676 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.167.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.167.6/speakeasy_darwin_arm64.zip"
      sha256 "134cd211433f3d275c747d0a2f4adbb388642ca54fdd99109cdfdf5854c61a19"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.167.6/speakeasy_darwin_amd64.zip"
      sha256 "4ea6445f32ddfbca8df722d7c5c4594cf4ee5444354c8d6f657dc8b92181773c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.167.6/speakeasy_linux_arm64.zip"
      sha256 "2028aa2913a6db9b3f03cf7d5d66dcdd55bd373ab4a5eecbe2c53bed84db134a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.167.6/speakeasy_linux_amd64.zip"
      sha256 "59346831c2db261b41b9830313c557e0808d9a8e10ac77785910e9626576ec0d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
