# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12093 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.209.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.209.3/speakeasy_darwin_arm64.zip"
      sha256 "be2429feb3e9255d7805db5421c0eafb8a51d00d51fd5ad47c086f466f8036aa"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.209.3/speakeasy_darwin_amd64.zip"
      sha256 "67735e56bb4791450648a17758f9d83624a5c1ea3616f2aa48744f70188d0ea3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.209.3/speakeasy_linux_arm64.zip"
      sha256 "f8a880d4e6164912b20b2bd26a57682c1a214f2d234b3f6b7a1906f29233107f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.209.3/speakeasy_linux_amd64.zip"
      sha256 "0cde0a9cb43aa87598cd4de9f93567a1de6b58362102d68852abc867515eed72"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end