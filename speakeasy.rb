# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.412.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.412.5/speakeasy_darwin_amd64.zip"
      sha256 "9b0f426987d85f7b0e82d03bbcd58ac075e050a0f5a96e85bf46ae7bdb7c9ea0"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.412.5/speakeasy_darwin_arm64.zip"
      sha256 "1963c4f0c161ac3ffe6dd07bfe9ff23c8776705046ce0bd9849d69e4f29e9367"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.412.5/speakeasy_linux_amd64.zip"
        sha256 "8581c8949841b2704f7328b5ab4069ec4b2409fadd3311075c844cacea9ef16a"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.412.5/speakeasy_linux_arm64.zip"
        sha256 "be8cfddf8aef06d92d1103df98dd21d65fb03305a1ad01e413751ee5c62c95b6"

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
