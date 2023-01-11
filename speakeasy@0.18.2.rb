# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT0182 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "0.18.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.18.2/speakeasy_0.18.2_Darwin_x86_64.tar.gz"
      sha256 "bc254e70ab185cc086ee8eed61497b5a3304f21e7574736d88809932db8601c7"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.18.2/speakeasy_0.18.2_Darwin_arm64.tar.gz"
      sha256 "ba9892b0c607854b82e98e10ee15b49cbf22641822a4526f6d022685bc8120cc"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.18.2/speakeasy_0.18.2_Linux_arm64.tar.gz"
      sha256 "15c211ca87ac937d7294f55bcb420a50f820b0741a99b7662769fe2def87eb8d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.18.2/speakeasy_0.18.2_Linux_x86_64.tar.gz"
      sha256 "987fb2699dfb72e497c0c93194cec2f765e61e6908fd4bdbb5ed0f7e95d5cedd"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
