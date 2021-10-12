let
  sources = import ./nix/sources.nix {};
  niv = import sources.niv {};
  pkgs = import sources.nixpkgs-unstable {};
in
pkgs.mkShell {
  buildInputs = [
    niv.niv
    pkgs.nodejs
    pkgs.ruby
    pkgs.sqlite
    pkgs.yarn
  ];
}
