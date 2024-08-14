# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13670 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.367.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.367.0/speakeasy_darwin_amd64.zip"
      sha256 "62eb90e91a32050d5f414e7b2dbec6873968d10affdac1b2486b817f0c48d137"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.367.0/speakeasy_darwin_arm64.zip"
      sha256 "ffaeca807133822b9e5f6435cf024c2257fe369899000cf5b9bec2eca01d522c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.367.0/speakeasy_linux_amd64.zip"
        sha256 "66d7344e8979de3c50d0e846922c04bb28dc8a3282072b7b1f7341a4e1845f78"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.367.0/speakeasy_linux_arm64.zip"
        sha256 "2f0a3bcaa57dc8cc0e8e53990c81e0a15d47a6fa356ed3b050a2c3b7104c682d"

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
