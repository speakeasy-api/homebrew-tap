# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.408.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.408.0/speakeasy_darwin_amd64.zip"
      sha256 "8b2e6cdc29585ef9ae718004f0fa46d7ccf34645c8e0745f251fa3d24898da0d"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.408.0/speakeasy_darwin_arm64.zip"
      sha256 "921ab58af5837c6b385c2e5a693bc60acfad9fde762fadb6d9fee1513dada616"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.408.0/speakeasy_linux_amd64.zip"
        sha256 "b2f198f278d475763c2a3b16b91554fe866a3a00ff1e9808b1a1ce4e9c577d69"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.408.0/speakeasy_linux_arm64.zip"
        sha256 "9321643ecf1f70ea6825af909b943b46d12762febed26e5b5afc090b365479f4"

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
