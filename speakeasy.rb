# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.464.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.464.0/speakeasy_darwin_amd64.zip"
      sha256 "7ba2c7132dd632f78bbc24e209356c2e78257a349d12b022562aa3f3c01b6a58"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.464.0/speakeasy_darwin_arm64.zip"
      sha256 "e359a3cd30c878e12b685dea087d9e78de2683f69f51053d6b781b73ae5f6642"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.464.0/speakeasy_linux_amd64.zip"
        sha256 "8e6d30ae1081f5069d06623e7e0e7ded8068be1bbd07345f455a8c0fa7b5270a"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.464.0/speakeasy_linux_arm64.zip"
        sha256 "deb489e32d4c6a46934ac1d0df6960387a99bb245469e2837ae0b11fbb984449"

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
