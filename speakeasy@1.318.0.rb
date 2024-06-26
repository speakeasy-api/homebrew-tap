# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13180 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.318.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.318.0/speakeasy_darwin_amd64.zip"
      sha256 "00348901a6280d9d20e37400a5cfad74b49b830df4afd69a669a9c3b16460c90"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.318.0/speakeasy_darwin_arm64.zip"
      sha256 "1cdcdfb7a8f3e0268fdaa60627528fbb0ccd93b0ef4fffad84323c811dfde357"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.318.0/speakeasy_linux_amd64.zip"
        sha256 "3d500ffc18dd43b94da903bcc9bd21a7ae0bf6ac8319723ce8d5997a3e930034"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.318.0/speakeasy_linux_arm64.zip"
        sha256 "9aecb67a4d5981fd6e3e59f188ae1032c57cd895e6e8a0803d066f60c100b06e"

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
