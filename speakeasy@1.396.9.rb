# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13969 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.396.9"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.9/speakeasy_darwin_amd64.zip"
      sha256 "aac2a01b0bf78a8701c80017f41237c55c8b9a638c240db2ac2ea81b035b0610"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.9/speakeasy_darwin_arm64.zip"
      sha256 "50589a4c832d828a3285252c3569e3d1f4f4dd6eb014e7322d4224891e056af3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.9/speakeasy_linux_amd64.zip"
        sha256 "f6b43c85b69e2f1f3bc2a1463997b5a38aca94b1787a31b073ec942bc12009a0"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.9/speakeasy_linux_arm64.zip"
        sha256 "da36bc19a8c8511c40b6734dfd3d0f423d556014722553e55a2270b0ba841ba1"

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
