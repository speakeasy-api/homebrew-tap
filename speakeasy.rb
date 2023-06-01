# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.40.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.40.3/speakeasy_darwin_amd64.zip"
      sha256 "c28bf23b764fafad0e4747b0370c09138c33b0306c2dd491ecaf266a36f1cba7"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.40.3/speakeasy_darwin_arm64.zip"
      sha256 "d8c9dee3cd97982b6749b61a61f48d2ac354814bad5b03f1fd6cf58ec4ac7c87"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.40.3/speakeasy_linux_amd64.zip"
      sha256 "bb906411bb377655f90729c75d68b4d2e282a59be59229fcdd9068947c79694e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.40.3/speakeasy_linux_arm64.zip"
      sha256 "6eb612d1385ed9da1e112db3c18cdf3e7b6dbae898381b3b8d4ec8342e890915"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
