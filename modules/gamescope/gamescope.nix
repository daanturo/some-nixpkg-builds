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

      gamescope = (
        pkgs-unstable.gamescope.overrideAttrs (old: {
          patches = (
            (old.patches or [ ])
            ++ [
              ./yaroslav-pohil-add_touchpad_support_for_wayland.patch

              # # applying patch FAILED - rejects
              # (pkgs.fetchpatch {
              #   url = "https://github.com/ValveSoftware/gamescope/pull/2077.patch";
              #   hash = "sha256-Qe3aCqROXWbqslxzZF3bpxPL0bu0NcI/r7uU6g8wo0o=";
              # })

            ]

          );
        })
      );

    }
  );
}
