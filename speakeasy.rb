# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.74.17"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.74.17/speakeasy_darwin_arm64.zip"
      sha256 "75fbef8332de75b9bb15f4f6b782b543c78c81d84a0341ca024fceddd7eba751"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.74.17/speakeasy_darwin_amd64.zip"
      sha256 "443af04b9747f65fbf81cd34715b109709bead71401c7eb31741ce98118c1c36"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.74.17/speakeasy_linux_amd64.zip"
      sha256 "120a5a99a00ddb1b8d0e24ac5a818062bc5dad987197e2a89afd6fba2dc3d403"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.74.17/speakeasy_linux_arm64.zip"
      sha256 "385143a93eacb4057128d58d3a75073df14d3136a1af1ed36aa34e103464eabf"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
