# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13050 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.305.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.305.0/speakeasy_darwin_amd64.zip"
      sha256 "7e7884638a44de7674961a927a85f16b5823077641c481fa0c05962707e493c5"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.305.0/speakeasy_darwin_arm64.zip"
      sha256 "ab63df63aa75992cdb89ba625eb11222fb72c3c5ffd64a2078e0cf52f460774f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.305.0/speakeasy_linux_amd64.zip"
        sha256 "a0a1ef70a454e5967e1ef6b0e81776c50054a36bd6a398ab3789b2beaa0d776f"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.305.0/speakeasy_linux_arm64.zip"
        sha256 "55cdcc9236e85e3dff9c894ae77e4f04e3f6e8e20c68f45700ce713162d2cbe1"

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