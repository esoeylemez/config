{ mkDerivation, alsa-mixer, base, lens, mtl, random, stdenv
, transformers, xmonad, xmonad-contrib
}:
mkDerivation {
  pname = "myxmonad";
  version = "0.1.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    alsa-mixer base lens mtl random transformers xmonad xmonad-contrib
  ];
  description = "XMonad configuration";
  license = stdenv.lib.licenses.unfree;
}
