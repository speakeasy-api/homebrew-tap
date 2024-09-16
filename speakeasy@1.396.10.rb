# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT139610 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.396.10"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.10/speakeasy_darwin_amd64.zip"
      sha256 "55c3a6c9f91a1d5a1a8ab5de4ea91e0fea920039f0c3085c2cf03c7e032cc90e"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.10/speakeasy_darwin_arm64.zip"
      sha256 "1d21e36709cc6e0eebeb24f8b14a64907a563237a09ff89c782d1326244aafd5"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.10/speakeasy_linux_amd64.zip"
        sha256 "f96dd86880875b3da1dcd207793b48ccdd54f819f6d1794210aa74cccbdfea70"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.10/speakeasy_linux_arm64.zip"
        sha256 "70db762b3354f62ee54715829bafa965772eb32195a76844010c6778ee7fb2ce"

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
