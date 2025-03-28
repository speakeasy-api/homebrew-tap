# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14610 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.461.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.461.0/speakeasy_darwin_amd64.zip"
      sha256 "a0fd149f7d7cac759dc51898716a9e87349f65a3b65014c9589e18611076c2cc"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.461.0/speakeasy_darwin_arm64.zip"
      sha256 "fff55c46b824b3a1e4e019908b9e1f2ab32d99091aa15b739e7d35a7c0c0ef2c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.461.0/speakeasy_linux_amd64.zip"
        sha256 "56d07ba2e43bfb7f0ab8273631e432cc45b5ce1befa41e9d251f7671967a8a49"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.461.0/speakeasy_linux_arm64.zip"
        sha256 "1fc5707b41e528f155e820dc8255f9feed76f866fb18ea8b61707555211b605f"

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
