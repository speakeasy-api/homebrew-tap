# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.468.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.5/speakeasy_darwin_amd64.zip"
      sha256 "df1b867c30c639289ebfc264e23b5379b98a907d91e3dbe32ac0c0a3fd4f0bbe"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.5/speakeasy_darwin_arm64.zip"
      sha256 "59c1021ec4e2a630ff8a753a4b3fd76bfb116fa009d1cd569f102951c002dcc5"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.5/speakeasy_linux_amd64.zip"
        sha256 "412e3c67f4ffc4a5686d545dc2fcc304bb72a1ded5f9c925efac591942a55ffd"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.5/speakeasy_linux_arm64.zip"
        sha256 "7f0770737701ce1f99b7082467eaf1793731dd3b30880db5429e5bec994ecd82"

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
