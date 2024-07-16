# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.336.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.336.0/speakeasy_darwin_amd64.zip"
      sha256 "ef086368a7380a4f4f226212402aa1ce12d596c3908154cc0bc4b8ce2951e909"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.336.0/speakeasy_darwin_arm64.zip"
      sha256 "64b2b086043f9ded9e33aaa79619bb9943fb50e087109668b7b03fe360db1189"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.336.0/speakeasy_linux_amd64.zip"
        sha256 "9d30afcb13e97dad5efae04728adeff1871cbc5f66dde2b9b7cae88d282ceba2"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.336.0/speakeasy_linux_arm64.zip"
        sha256 "9661728e9452e413e642092a62c3d502b00aed3e0379b12f2b690e39d7eed826"

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
