# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14516 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.451.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.451.6/speakeasy_darwin_amd64.zip"
      sha256 "e425889d54e9fee22a82e35348abd28cde871f4efb57dee9bffbaaaf1d94f9c7"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.451.6/speakeasy_darwin_arm64.zip"
      sha256 "86b9764a5484af974dc2e3798588eb376fc5d5d94c174f47fb07157e6344d2ff"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.451.6/speakeasy_linux_amd64.zip"
        sha256 "dcb4ecf7f59d62bcc460573a13abae60617679c20f2783f211f304880a1f7978"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.451.6/speakeasy_linux_arm64.zip"
        sha256 "2aa75e3f1363317cc1ca7f88fde8867285ced5e90bafc4bd9e7a9ae734889386"

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