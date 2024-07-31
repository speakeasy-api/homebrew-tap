# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13491 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.349.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.349.1/speakeasy_darwin_amd64.zip"
      sha256 "67860641b9ea6852729863024afdb362f895bd0ff68d0ad09fac6c7e3932218c"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.349.1/speakeasy_darwin_arm64.zip"
      sha256 "5a16280f5a58eca92a8144b7bded8718ff0d6d87611c52782d2199e66479e7a6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.349.1/speakeasy_linux_amd64.zip"
        sha256 "2e9bf30d87b5f4b2040bc21b7e122d248bcb4518e3a24d5721e7dde32e8fd332"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.349.1/speakeasy_linux_arm64.zip"
        sha256 "c99a4796294b7b8bee39442df8f7fcd2581fb41a1299bd5860e5b83ea82ffffb"

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
