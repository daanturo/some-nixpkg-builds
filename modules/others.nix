toplevel@{
  inputs,
  forEachSupportedSystem,
  lib,
  ...
}:
let
in
{
  packages = forEachSupportedSystem (
    {
      system,
      pkgs,
      pkgs-unstable,
      ...
    }:
    {

      # branch unstable-20250526 of pkgs-unstable.tree-sitter-grammars.tree-sitter-clojure
      # https://github.com/clojure-emacs/clojure-ts-mode#install-tree-sitter-grammars

      # # https://wiki.nixos.org/wiki/FFmpeg
      # ffmpeg = (
      #   (pkgs-unstable.ffmpeg-full.override { withUnfree = true; }).overrideAttrs (_: {
      #     doCheck = false;
      #   })
      # );

      # build updated llama-cpp from source?  pixi's version seems fine ATM

    }
  );
}
