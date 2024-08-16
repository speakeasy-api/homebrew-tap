# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.372.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.372.1/speakeasy_darwin_amd64.zip"
      sha256 "c3c5ee546eb05a04b07f4cb82dda631294a6f558b574e4673b50259cb71a9cf5"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.372.1/speakeasy_darwin_arm64.zip"
      sha256 "bcde205d5d12d879b844cc34110b74940534e3dadede087c63a2bd13035ae7d9"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.372.1/speakeasy_linux_amd64.zip"
        sha256 "48aee82359e972346a1e93465a45f20eebee7e3e2f45a3db774c0132b56fe3d5"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.372.1/speakeasy_linux_arm64.zip"
        sha256 "357701bee30450b007908cf1f339a0a1ef94a40daa40205754337dcdc07ec03f"

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
