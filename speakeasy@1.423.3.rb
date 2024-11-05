# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14233 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.423.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.423.3/speakeasy_darwin_amd64.zip"
      sha256 "704b96de8fa064740ddc03a900314281899d2099e07695da5bf43f51aaebb175"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.423.3/speakeasy_darwin_arm64.zip"
      sha256 "31f7c599ba0655943d2f2ffc4144ee9f2f51e8e38436dfb8f7acbb20c6e89027"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.423.3/speakeasy_linux_amd64.zip"
        sha256 "d7902a44a395bb13d7bb4fdb63d3bb9d18496f9f63d552281593d2fdaf4bdb53"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.423.3/speakeasy_linux_arm64.zip"
        sha256 "87af182cf28629f7ed7f742c680c6aa5eb9348389f90fe66823acf10f301862a"

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