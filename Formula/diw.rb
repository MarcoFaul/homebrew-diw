class Diw < Formula
  desc "DIW is a CLI utility helper tool."
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/releases/download/v0.9.2.4/diw-0.9.2.4.tar.gz"
  version "0.9.2.4"
  sha256 "27ad7534bd98078e03084a77885e6a6e6d57c75b3442d2364da3d169ed485fcf"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      Diw is a CLI utility helper tool made for DIW

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
