# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15351 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.535.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.535.1/speakeasy_darwin_amd64.zip"
      sha256 "696002cb846eb74f0ecea39c700752bf976e35c6e1baa04991b2f5db3cc2cc02"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.535.1/speakeasy_darwin_arm64.zip"
      sha256 "0e8fa1d3f44467c3f75d0e244061709e4442f41f9ae6651abc57f4e2f20a7109"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.535.1/speakeasy_linux_amd64.zip"
        sha256 "669431836d9d176bef3fb47bbdd515ee9cbbcdd8e02f360d2f3068cc9a5f2fab"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.535.1/speakeasy_linux_arm64.zip"
        sha256 "98bdeab9c2b9745157b34c9535c780b88006a59cceed78f52e6cd29c6c3c0acd"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
