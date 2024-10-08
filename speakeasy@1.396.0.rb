# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13960 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.396.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.0/speakeasy_darwin_amd64.zip"
      sha256 "4cc113ee30f491000da34d58cc0a2c4cc48737c422ed63ec518e70c27bb29fc5"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.0/speakeasy_darwin_arm64.zip"
      sha256 "98f1da163d77f5b29ae0d759f37882de63e76abc6428ee193c0d17d55b12ecb0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.0/speakeasy_linux_amd64.zip"
        sha256 "00c5f328d5f4bf777b37a8bcc16443785bc86cab64b5141addd7133d36011471"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.0/speakeasy_linux_arm64.zip"
        sha256 "b4b32b08eee64555581c70a51784eed1a9aae130ed486e3568d5b06ddf0a9f19"

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
