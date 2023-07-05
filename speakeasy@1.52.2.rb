# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1522 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.52.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.52.2/speakeasy_darwin_arm64.zip"
      sha256 "3364af1e23fde8ebc38f6be3e205fa981e1865e3988ce837e503f61b5fe8e2ce"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.52.2/speakeasy_darwin_amd64.zip"
      sha256 "fe2a32cf18b7afef33c2a583a9d6f3216c08b68f698ae49d8be38d1899851e42"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.52.2/speakeasy_linux_amd64.zip"
      sha256 "f5ab35c1b489bec1153c01d9b073d7b8a9168a78813cc7afb5157aebc44287d6"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.52.2/speakeasy_linux_arm64.zip"
      sha256 "9b9a3eb784f7a246aa17af0fa02f1e69056af4ba19f079ff72a52bde48ccd973"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
