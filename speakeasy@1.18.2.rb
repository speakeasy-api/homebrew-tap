# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1182 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.18.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.18.2/speakeasy_1.18.2_Darwin_x86_64.tar.gz"
      sha256 "3c4d8fb008d1afa612f6a0d66df94a5dbc2f4143daca6fa80cfc4843432b97b4"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.18.2/speakeasy_1.18.2_Darwin_arm64.tar.gz"
      sha256 "cc9209affd938ebfb7250fb041335d822347e1cb45c66bd5b82d8fb96034a046"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.18.2/speakeasy_1.18.2_Linux_arm64.tar.gz"
      sha256 "f599d329d823a8f93de8dfd7fa969c3fd98ae2fe2e3518466b2c3edc3d46add2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.18.2/speakeasy_1.18.2_Linux_x86_64.tar.gz"
      sha256 "15e92dec54c76be06b7edbc08ca7b6542682bc2318a9d8dc57f24c651638f7c5"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
