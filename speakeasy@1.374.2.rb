# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13742 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.374.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.374.2/speakeasy_darwin_amd64.zip"
      sha256 "7978325aee17506c16e8845eba317e8feedba6aaca92351b979e86ffd583de0c"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.374.2/speakeasy_darwin_arm64.zip"
      sha256 "18c0e27bdeb85c262441df799535a7a42dc407041b2b1724d7dddd82d83487f1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.374.2/speakeasy_linux_amd64.zip"
        sha256 "fb4126469b388466e614dcc5ae73dfc8b7db2010aaf8ddd7bbb7df145344c922"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.374.2/speakeasy_linux_arm64.zip"
        sha256 "e780cfe87b1d35ca4257e250b59043965205a0e3e5d1263f13d43a83baed0333"

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
