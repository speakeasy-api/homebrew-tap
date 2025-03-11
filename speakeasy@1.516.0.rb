# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15160 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.516.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.516.0/speakeasy_darwin_amd64.zip"
      sha256 "a04221fa1d55b276598574ccb3722182edfa17c3c79c17442a93fbdf2def311f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.516.0/speakeasy_darwin_arm64.zip"
      sha256 "870ec7060e6559c96696e1d702846069a90ce3d1e081f64b237bace54f25915d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.516.0/speakeasy_linux_amd64.zip"
        sha256 "e055af1b103e593bc9534b4b6ee59f063f2034fdc3a88afaf7fb852f284a36cd"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.516.0/speakeasy_linux_arm64.zip"
        sha256 "2356ab7efc18dc8940b91ab5dfbcbe539a2f5f6c15899d5b848c13b083ecab31"

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
