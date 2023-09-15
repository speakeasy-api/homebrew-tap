# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.84.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.84.0/speakeasy_darwin_amd64.zip"
      sha256 "d55ff7f49cbf49ad9d0f2d95eab92a7057b4cec39cba6c3adce6522303ceefbb"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.84.0/speakeasy_darwin_arm64.zip"
      sha256 "d969104ade73408fa86dfc380c65964aa63413730673e535b06aae1c6bb0aa4d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.84.0/speakeasy_linux_amd64.zip"
      sha256 "4f1264206072a7fb1c0bbde2c4ba2d252407b3737843d9231e2374449c550298"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.84.0/speakeasy_linux_arm64.zip"
      sha256 "c2c09e360a6995a23608285d5236964ed808cec80d4c03da019eba042f77a56e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
