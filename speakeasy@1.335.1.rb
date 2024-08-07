# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13351 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.335.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.335.1/speakeasy_darwin_amd64.zip"
      sha256 "ed12e7d0cac5648d889fccc29d70f466c94d7aee145af866d72e9c5b6517f3aa"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.335.1/speakeasy_darwin_arm64.zip"
      sha256 "835b4be73b585bb7a77776cf8dd2266d15ccd10e71a98acb2aa5849f20913840"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.335.1/speakeasy_linux_amd64.zip"
        sha256 "b540fee996f30841a22aaa9e97afd147dd13e95674214b75eaf4f15dea2823bb"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.335.1/speakeasy_linux_arm64.zip"
        sha256 "54df956b89b7b568155d1ab513adbeea26f7d5d5c4e0fd53450ecd35e085a08f"

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
