# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13611 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.361.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.361.1/speakeasy_darwin_amd64.zip"
      sha256 "2aa4992a2c824eaa5a30a90f104217c7c1426850c783e737eae4d2a5780b450c"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.361.1/speakeasy_darwin_arm64.zip"
      sha256 "14de8f3a77085793c96871b0bbc78079c043b76e45ece6c4aa79094bd4ca6d98"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.361.1/speakeasy_linux_amd64.zip"
        sha256 "c4d0b30be785ba655554f54387718d59bd6bfa19a414a4db5a6e46df142742a1"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.361.1/speakeasy_linux_arm64.zip"
        sha256 "286422abbf07f782738e2df5f906e042556c3591c032f09be06d137580eab69a"

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