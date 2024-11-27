# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14442 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.444.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.444.2/speakeasy_darwin_amd64.zip"
      sha256 "43c8cc7967c16700e33e6b01eab7716094a5eb889024f2eb10a1c2a03d02b6be"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.444.2/speakeasy_darwin_arm64.zip"
      sha256 "92e53b1e6ecd6fe9660d432521b91058b9884cd9264bbd453ff843be44f563f7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.444.2/speakeasy_linux_amd64.zip"
        sha256 "254c43ce28bbc6d69bbf86645b6486aa14e48b302b86cec9aa91774e792bca6e"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.444.2/speakeasy_linux_arm64.zip"
        sha256 "081811d2fc5db01979f460647dac7fa1c5d6932658887b00c3d1fce8fb1d1843"

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