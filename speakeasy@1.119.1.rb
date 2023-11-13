# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11191 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.119.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.119.1/speakeasy_darwin_amd64.zip"
      sha256 "9e9563b348b55f467b4db640e8d666832d4797281d631ed8d9d832024eca09a7"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.119.1/speakeasy_darwin_arm64.zip"
      sha256 "6bd919249da6c4a1eb973fbe0f1b675acc79abee78bd521e097c460c20b6fcf4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.119.1/speakeasy_linux_amd64.zip"
      sha256 "dd9c86970653a7bb7167e638db01fd8506a398bc43f8456b01b95fa2d1ce8966"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.119.1/speakeasy_linux_arm64.zip"
      sha256 "e401188a7dc104621629a942e6c84c6b6ae3b471b27d749d4902d1c6dd7b2774"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
