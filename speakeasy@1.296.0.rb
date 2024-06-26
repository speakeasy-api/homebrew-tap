# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12960 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.296.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.296.0/speakeasy_darwin_amd64.zip"
      sha256 "58add28b0650c299a205eb735476467aa6bafb7191d4c3f3cd61f9cd08741157"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.296.0/speakeasy_darwin_arm64.zip"
      sha256 "30d6d20421c03d9d25848820860ffffdf3ef456716ce0487c86fd34838f0220e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.296.0/speakeasy_linux_amd64.zip"
        sha256 "7ebe0255676236867eb7e6041b27cd0e28772793ba453d250de180cb108ca3df"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.296.0/speakeasy_linux_arm64.zip"
        sha256 "b89265683d6dc758ca807f68134790d9eda095476376fd674d3757c0712ea7c7"

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
