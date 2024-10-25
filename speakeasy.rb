# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.422.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.422.1/speakeasy_darwin_amd64.zip"
      sha256 "2175073e251c8051ca2d2a58e9de2ef47d5d05dfbdc26ca954b8db75d8ce6700"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.422.1/speakeasy_darwin_arm64.zip"
      sha256 "2a9986bda9e55b1b097f24f92144d3366951b14fefe95ef12d216665ce464bdc"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.422.1/speakeasy_linux_amd64.zip"
        sha256 "b423daecfe76549d418bee3c69a2b8f4af976e85282c3da65e2e83c7eeb09806"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.422.1/speakeasy_linux_arm64.zip"
        sha256 "8ee94ef8b40d5be36b631350c65fd436d8cc0df33cf1c9c00a6878da7cbe7c8c"

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
