# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.141.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.141.1/speakeasy_darwin_arm64.zip"
      sha256 "854ae2d8fb53cc63f712778511201e577f67ab1dbc9bfa57ea16c26e9306248a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.141.1/speakeasy_darwin_amd64.zip"
      sha256 "295c4c37baa164b586bdc34977090e15bb3eb829cc86ffe5a7c83e470987a227"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.141.1/speakeasy_linux_arm64.zip"
      sha256 "c8ba1c48ab725040c0a388015ee59d515e948bd59ce38c6652284f36c6b041ab"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.141.1/speakeasy_linux_amd64.zip"
      sha256 "006244f652c653ac068d6b3be04b61ad0661817a0bc471dd9cd142968feb5343"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
