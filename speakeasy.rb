# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.36.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.36.0/speakeasy_darwin_amd64.tar.gz"
      sha256 "f76f48f2577007457915d1d70b9564ad7cdf312c8a5ebfa8fc29a9d15fa95511"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.36.0/speakeasy_darwin_arm64.tar.gz"
      sha256 "4d9e077ec4fa0d0cd624c898fdf14e0004bd93f798affe0489174748592581e3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.36.0/speakeasy_linux_arm64.tar.gz"
      sha256 "de0a6973a842f1645b36697680d93ed618683319887918f8aa2a648237a1490b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.36.0/speakeasy_linux_amd64.tar.gz"
      sha256 "5ccb930c73cb6e2299a17acd490008dd436fa6251427852e7636110820288dc4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
