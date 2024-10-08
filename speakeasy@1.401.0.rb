# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14010 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.401.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.401.0/speakeasy_darwin_amd64.zip"
      sha256 "f520f6ff031141055f3456a001587b38f6c6c34bf78019350527db9697a253df"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.401.0/speakeasy_darwin_arm64.zip"
      sha256 "5afa32bac092664315967a87a7eda49449497a1a3812ab3272c10f30f3bc1754"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.401.0/speakeasy_linux_amd64.zip"
        sha256 "36e1a5a72324f9a0cd13f04d0281eab85d960d5f7b500e8df5da6182a13fe3fe"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.401.0/speakeasy_linux_arm64.zip"
        sha256 "3803fa26adeba9a1561bb4cb3abcdd4cbbb1d3630c72192d67ae8de8977bfcbe"

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
