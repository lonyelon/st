{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [ pkg-config ];
  
  buildInputs = with pkgs; [
    fontconfig
    freetype
    xorg.libX11
    xorg.libXft
  ];
}
