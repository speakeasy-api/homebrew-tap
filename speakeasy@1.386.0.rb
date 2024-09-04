# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13860 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.386.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.386.0/speakeasy_darwin_amd64.zip"
      sha256 "64147eed097da6094f06ef0206d7b592cd6d321676d9e196ec1c4275a0f1ea5f"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.386.0/speakeasy_darwin_arm64.zip"
      sha256 "8bc9249fe777cff3ecd6a6b47cdee32b5e0c982ae53ae57e4d6bf73ed6b59fdf"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.386.0/speakeasy_linux_amd64.zip"
        sha256 "453231aad8bf4759cf96e3b2d358635c6473974b00f6af3e0eb398b48a40b518"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.386.0/speakeasy_linux_arm64.zip"
        sha256 "d0dad03c85b9da41b06bf7df292ea2d308fa654e6176b23575c1efbad914431a"

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