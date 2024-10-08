# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13774 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.377.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.377.4/speakeasy_darwin_amd64.zip"
      sha256 "e37990ebeef4d25f9f2ec24e119672afcd699d3ac65154d6bc8f1a996aa10544"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.377.4/speakeasy_darwin_arm64.zip"
      sha256 "3664cf14de380a98e577a5890e393276b44a6304663e2d6fd05687013ca5c165"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.377.4/speakeasy_linux_amd64.zip"
        sha256 "118cd754f53e60715790fdd71a8f4d66f301d5fea116bca705cae2b2214d9e98"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.377.4/speakeasy_linux_arm64.zip"
        sha256 "298a36728886d250ef15e20790683d9486279ecb2e704ee02c5f80dc0ccabb3a"

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
