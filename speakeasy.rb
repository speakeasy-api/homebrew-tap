# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.497.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.497.0/speakeasy_darwin_amd64.zip"
      sha256 "152afedc78ee28791f235d205662524289eb040f07424cf73c6a0a57f67d8baf"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.497.0/speakeasy_darwin_arm64.zip"
      sha256 "4f88d15758187592852b77ff2cc9e1bb54e268e27f378e1506c530af83e3c060"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.497.0/speakeasy_linux_amd64.zip"
        sha256 "46054bfb4896b4f9e5fd760fe7b263fa729773498c718a71569681698b61ac52"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.497.0/speakeasy_linux_arm64.zip"
        sha256 "aa43cba10d528885b466435d364888bf642a136269b82c7750f78ea2495fd5e4"

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
