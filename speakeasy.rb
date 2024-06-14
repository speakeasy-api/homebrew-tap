# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.308.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.308.1/speakeasy_darwin_amd64.zip"
      sha256 "6d5fe4ea1b88847ac377c44d318abc588fe71d0a4cae4bed306e41b3544f93b2"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.308.1/speakeasy_darwin_arm64.zip"
      sha256 "4317a556be513d7344a11eca9d9e6c7e8ebb0d4be344ea85f2a7e5dfb1b0ce51"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.308.1/speakeasy_linux_amd64.zip"
        sha256 "7684c176c6cced9f0ab2a79b75fa6e11bb626f0025bdc10afbfb340df9470afe"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.308.1/speakeasy_linux_arm64.zip"
        sha256 "6ef794a042cb8bad0ab45621ae784543f86190e2d3b185eff0c519414dc03b22"

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
