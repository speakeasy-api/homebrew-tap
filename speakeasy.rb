# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.444.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.444.3/speakeasy_darwin_amd64.zip"
      sha256 "4c7c88d91690a2a92476a0b94dac38af561a19ea75d6f31e59b6b787c7db1d14"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.444.3/speakeasy_darwin_arm64.zip"
      sha256 "3e5ad9e975cce6a355ab6edbcdd04396c7e105df69ef50ab03d9596c0ebfe7b4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.444.3/speakeasy_linux_amd64.zip"
        sha256 "09e65f28cfa8591d7d5cc61a479f87cd90a65877cd467daec036efa0826fd873"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.444.3/speakeasy_linux_arm64.zip"
        sha256 "51cb5ec0c528b65988b8dbfc78c50011b60d0f8a6019a9c6eabdf17449766b73"

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
