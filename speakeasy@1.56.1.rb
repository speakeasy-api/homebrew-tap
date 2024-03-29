# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1561 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.56.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.56.1/speakeasy_darwin_arm64.zip"
      sha256 "d5fda59df564c15ca918a3b02044cffe555795f55d60ce3c907c5b9cb05a79c6"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.56.1/speakeasy_darwin_amd64.zip"
      sha256 "4472fd1839489c24ae1aef39de8c1473f2a18b983996490363fcc6c8136d4552"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.56.1/speakeasy_linux_arm64.zip"
      sha256 "c746de5aa46c95852262467a1e772a81909c20d4d588f9e863a269c9c01c5f77"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.56.1/speakeasy_linux_amd64.zip"
      sha256 "1d73efb330b21e32a59fd295e3c86afc8ec1c9039f2ca68d104fdbc0ac1807c0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
