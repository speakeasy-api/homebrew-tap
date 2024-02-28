# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.196.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.196.0/speakeasy_darwin_arm64.zip"
      sha256 "17699783ac4ee4203c16f34c42c25268b1293dc79a638f7e02f66967d2113633"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.196.0/speakeasy_darwin_amd64.zip"
      sha256 "db6ecd31d8154ed02f349b6ab9391ceab9d45cbc280402c49f8788c19ba35fe0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.196.0/speakeasy_linux_arm64.zip"
      sha256 "0c08182426b1c7217ecdf4508ab6c092926eeec261b16ca72de647ba87dc9edb"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.196.0/speakeasy_linux_amd64.zip"
      sha256 "e2b61f176e9d2b2fd045d5663fab71a026ce376556b9ac1b0e51caf5751fa130"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
