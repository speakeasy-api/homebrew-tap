# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12103 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.210.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.210.3/speakeasy_darwin_arm64.zip"
      sha256 "5d65aa1febac40a06b91ebab147c483d12d3bbbf307e5ea136cf497b7156dc14"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.210.3/speakeasy_darwin_amd64.zip"
      sha256 "f15f262a66a98666592055420e6f1ee1b387954680ac5f7c80ee152bcf6567c6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.210.3/speakeasy_linux_arm64.zip"
      sha256 "3193333890e858674e5ccc0e6ee22801ef3c332c2035d9741d2937a509d88335"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.210.3/speakeasy_linux_amd64.zip"
      sha256 "efdb9652a941a3b830d4e54360852d5cfb7b6d723852cd879b14bb13456a5a96"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
