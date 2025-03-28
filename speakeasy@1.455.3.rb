# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14553 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.455.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.455.3/speakeasy_darwin_amd64.zip"
      sha256 "457d786a3fe5fc23dbaecba7ffcb5ef5c211050c1ec17c9546b9b1fb0d7c2c4e"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.455.3/speakeasy_darwin_arm64.zip"
      sha256 "f5e2b56a594063e5e548a83a9c16b253c2cca5c4b7ab7f3849dfd5821f140103"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.455.3/speakeasy_linux_amd64.zip"
        sha256 "d4eabe266604d63c71e2dbb91abc370d9c47c560dc44b6a15b73ffd8e3aa98c2"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.455.3/speakeasy_linux_arm64.zip"
        sha256 "c1c2fb97f38558cdba2c4834dee194c0b383c6630f7d46b36ce46bb531267dd9"

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
