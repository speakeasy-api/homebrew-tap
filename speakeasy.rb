# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.280.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.280.1/speakeasy_darwin_amd64.zip"
      sha256 "036986c5c5edc51034b754e3127242ead0bebba3a4621c87fba09b5e01066c51"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.280.1/speakeasy_darwin_arm64.zip"
      sha256 "14f2217939ab50d8352990fed03e3882efcae44cc49d644a29618c17144276ab"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.280.1/speakeasy_linux_amd64.zip"
      sha256 "922620d7f143c95b70f40365e26b2be0e6dda5f273e0e83199aa7707b810fc5f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.280.1/speakeasy_linux_arm64.zip"
      sha256 "97cf08519fe80f5488f22cdc25cef5bd3906efcfc5cc7606d11e00de7b990094"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
