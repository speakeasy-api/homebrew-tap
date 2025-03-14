# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14343 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.434.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.434.3/speakeasy_darwin_amd64.zip"
      sha256 "6f1c28ada7287a8c4ad5c58868b907ff51236718deb899352edd71951295112f"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.434.3/speakeasy_darwin_arm64.zip"
      sha256 "0d6557320daae0dc31e7d42a9552e3c466420f47b74293ceae3b94ec4fb9e09d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.434.3/speakeasy_linux_amd64.zip"
        sha256 "13f26bb4855fa54515a07dae2caaee73042fdd0a0e3dce0f339510e5a43dcd0c"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.434.3/speakeasy_linux_arm64.zip"
        sha256 "66ce26a26296d8590d8a34d55490a9552ea63cd7b7853c7c5863b37abced43e9"

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
