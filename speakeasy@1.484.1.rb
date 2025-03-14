# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14841 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.484.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.484.1/speakeasy_darwin_amd64.zip"
      sha256 "f3eb13340db3020f2938db6d3872e89fcbdc3500eaca0734c749dd75d0fd2fe9"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.484.1/speakeasy_darwin_arm64.zip"
      sha256 "60cfaa8f7866e1ced1308e2423948d293731dd3061b0422d54a5226e90d240fe"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.484.1/speakeasy_linux_amd64.zip"
        sha256 "76af49c7c9aef484d8dea25309fd48f9de83844e2a94ec76c5424bbf1a19ab95"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.484.1/speakeasy_linux_arm64.zip"
        sha256 "b1db93f4f145b7fa349733e12ecba17c8658f09b76d2e2769c9de4c6167bac26"

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
