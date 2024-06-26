# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13071 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.307.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.307.1/speakeasy_darwin_amd64.zip"
      sha256 "11d5b90f0fa7d47cadab491b82bc2dfae6bcc298bd43b56c9bd0d6fe0a379eb8"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.307.1/speakeasy_darwin_arm64.zip"
      sha256 "cd9c94f9045213d4706755de5f036adbcde3b89fa496bd9020944b0b289c5bf6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.307.1/speakeasy_linux_amd64.zip"
        sha256 "1b67d679f73377ef7408081c942202eb8142009be4f49be08403f437e7350f9f"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.307.1/speakeasy_linux_arm64.zip"
        sha256 "1b3d08498b50259bc46be8019a19e4f23444a37d6d1295e8a90de77771e270a8"

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
