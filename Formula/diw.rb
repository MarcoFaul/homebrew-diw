class Diw < Formula
  desc "Diw is a CLI utility"
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/archive/v0.0.3.3.tar.gz"
  version "0.0.3.3"
  sha256 "1d25656ebc7746500ead45ac3669de5664ba713de753bf4a8e7141fbf4a1d849"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      diw is a CLI utility made for DIW

                         \    /
                          \  /
      |\\  //|             ||
       \ \/  /             ||
        |   |              ||
        |   |              ||
         \   \------------------------\
          \                       o    \
           \-                           \
            \                 \__________\
             \-                          /        Marco Faul at dasistweb
               \________________________/
    EOS
  end
end
