# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11410 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.141.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.141.0/speakeasy_darwin_arm64.zip"
      sha256 "473cbbaa618cd42895fb6be426a9ca357df641d09d137799d8995bc4e74d3c64"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.141.0/speakeasy_darwin_amd64.zip"
      sha256 "9d8772c2870f761568c8bea9cdb2fa1acc1ed982c5c194d036cc7dadc8e891e3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.141.0/speakeasy_linux_amd64.zip"
      sha256 "209b7b240bf1968fead0838e0a2f82d2f03dbed3342e3938dcb1225ca504f8dd"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.141.0/speakeasy_linux_arm64.zip"
      sha256 "116d92cb95f5ff90ee4fa74289e8705d5d4eda9c1443fcd7eba6e51799e81360"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end