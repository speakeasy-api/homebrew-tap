# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1440 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.44.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.44.0/speakeasy_darwin_amd64.zip"
      sha256 "0906e359716334b9625500f9bb9c405ad3d82ec2270cc97cc6f653e5a29c2648"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.44.0/speakeasy_darwin_arm64.zip"
      sha256 "a8b5e783cab9abfb3781da85169b481312edbd4398684337dc5db3cf5ba7e524"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.44.0/speakeasy_linux_amd64.zip"
      sha256 "88313ccf74a984ce42ce54b8aa1df0b4fc7c696150416719219562e1be9bdc22"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.44.0/speakeasy_linux_arm64.zip"
      sha256 "0f15b4f689c7f0b78a5af079af075f688dffd1b5fad3a2faf58052a0076460cb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
