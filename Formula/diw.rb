class Diw < Formula
  desc "Diw is a CLI utility"
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/releases/download/v0.8.5.0/diw-0.8.5.0.tar.gz"
  version "0.8.5.0"
  sha256 "ad8c701d8376f1d2bc793b007df2bfb26cacc9185f6d8e8f3f4c05e6832cf2bf"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      Diw is a CLI utility made for DIW

      To start diw simply run:

            diw

        Documentation is available at: https://diw-tool.netlify.app/
        Created by Marco Faul
    EOS
  end

    test do
      system "#{bin}/diw"
    end
end
