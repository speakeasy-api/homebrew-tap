# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "0.11.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.11.3/speakeasy_0.11.3_Darwin_x86_64.tar.gz"
      sha256 "820afa635260f92bcd0ba158767cc7b1a4eccc24cb35721dea20927481e38e94"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.11.3/speakeasy_0.11.3_Darwin_arm64.tar.gz"
      sha256 "84f90fdcc71ac19d1476a9bbd54a5ae2b74f4bf2e6dfa2f1d889415ca3943218"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.11.3/speakeasy_0.11.3_Linux_x86_64.tar.gz"
      sha256 "6232fd8fa1a7d19af338f2a9de7829ccf3a28e5e0cb21cba1c2e7ab392abda00"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.11.3/speakeasy_0.11.3_Linux_arm64.tar.gz"
      sha256 "a965f2115f8a06f34078eed5135c57b2f4be5b0d802add7a422a1162c0244976"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
