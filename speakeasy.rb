# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.399.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.399.6/speakeasy_darwin_amd64.zip"
      sha256 "934c987abb6ca91ef4659f4efbae2d0609fa34dfdb799d54c75fb5481169005d"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.399.6/speakeasy_darwin_arm64.zip"
      sha256 "a3fdd01e3507b2e4cc0a6f45118675b5c182b428c925b491ae9e4f127b277523"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.399.6/speakeasy_linux_amd64.zip"
        sha256 "d0b0cfb379903523f44db15d62f59bf6f775cc376a232bc596afb4c910a755a1"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.399.6/speakeasy_linux_arm64.zip"
        sha256 "04425f87830f5f7c6d6602333d7b0951621ae5c63369e81e27008199b5421fac"

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
