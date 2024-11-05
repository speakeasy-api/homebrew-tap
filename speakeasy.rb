# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.426.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.426.0/speakeasy_darwin_amd64.zip"
      sha256 "2fd727069d7c1b9d61995fd706affb11b19e5abfab85898663e82bd70b288197"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.426.0/speakeasy_darwin_arm64.zip"
      sha256 "9f672df6430a83170649bcc73a503f75325b9e6619fdfe887844b1945fd46244"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.426.0/speakeasy_linux_amd64.zip"
        sha256 "fc0fd627c8aa7ec339b5c210bb606faff2dfa137967248fe8caa580bc413660b"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.426.0/speakeasy_linux_arm64.zip"
        sha256 "8ed03dd7c5b369c1b625ce12ae1b5e8fec69bec7aadd88c8e003a83a9f9e00c1"

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
