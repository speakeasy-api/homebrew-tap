# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14024 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.402.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.4/speakeasy_darwin_amd64.zip"
      sha256 "7b0ffdaaf8a706cbf8337884bb94b5fc1a536a5e7e08eae606aae5f11967f717"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.4/speakeasy_darwin_arm64.zip"
      sha256 "235a23ff0d9ce7162548dca0b4a6a230bb016ce82ab057f04c91808367f9e7a0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.4/speakeasy_linux_amd64.zip"
        sha256 "1000c1d57df45ed9d5372a074e72d1ae924871c18f0d655419684f5f78dee12d"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.4/speakeasy_linux_arm64.zip"
        sha256 "079e2342635bb684e59569ad2ce19fd53fa4fcd309ff7b18deacddbc0bfabfc8"

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