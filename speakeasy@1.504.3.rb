# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15043 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.504.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.504.3/speakeasy_darwin_amd64.zip"
      sha256 "8e4420b14a18a1dc59ec8addd0ede82745a844f270418cdc73b08136bc769aab"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.504.3/speakeasy_darwin_arm64.zip"
      sha256 "880a90e456032daf3c5e3346b96a9be772f23fe534acb79a81c2cf2dc356163e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.504.3/speakeasy_linux_amd64.zip"
        sha256 "1d94592d8cdc3b34d9e8f0088eeb0d0019ab81464253d1a354dff75e334e64d6"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.504.3/speakeasy_linux_arm64.zip"
        sha256 "783930344b5c809c84dae212bbe4517e01a8667f789ea8a3d02cc38631d8153b"

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
