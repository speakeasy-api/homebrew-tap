# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13833 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.383.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.383.3/speakeasy_darwin_amd64.zip"
      sha256 "16b182b9c552a217d23917e654e719993f6c0c4918c87fbc5e29b4d785eb825c"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.383.3/speakeasy_darwin_arm64.zip"
      sha256 "d54862ac0508cccb24a9f4491e578c82cda452220746b1c09e8c729d285393cc"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.383.3/speakeasy_linux_amd64.zip"
        sha256 "c4c5e6a6bb6359331a967fb7ef3f462edfeabfacf7bc9b852135962177692908"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.383.3/speakeasy_linux_arm64.zip"
        sha256 "44793ad3e206c9a9d524065eb13f99c3974ee68c9b5928105ed20b5acc3ec641"

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
