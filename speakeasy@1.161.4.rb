# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11614 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.161.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.161.4/speakeasy_darwin_arm64.zip"
      sha256 "82998b9ceec718ca444b90e7798cb0f0d2d5604144eca87b41e162a8839aadd7"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.161.4/speakeasy_darwin_amd64.zip"
      sha256 "eea4c72dc1daac8d891fa2caefe163389e38891c85ed54c39867a96cc37d2051"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.161.4/speakeasy_linux_arm64.zip"
      sha256 "9bc26bf3cedf4b2f393b280d23c2431be4b28108e69b00f9330f82778e5474eb"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.161.4/speakeasy_linux_amd64.zip"
      sha256 "d7a5261d636a42b155e5ffdd6c7b9f6516e0bb8dba020e1c893246bc1015271a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
