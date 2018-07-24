# Port for `accessd` and related utilities

This is the BSD Ports system configuration project for accessd.

## Procedure

1. Make sure that the ports system is setup. On FreeBSD, this is done with

    `sudo portsnap fetch extract`

   On DragonFly the procedure is:

   ```
   cd /usr
   sudo make dports-create-shallow
   ```

2. Bump the PORTVERSION in the Makefile to match the Git tag of the new version.

3. Run the following:

    `sudo make makesum`

   This writes the distinfo file, which is in version control. Make
   sure you commit this when done.

   In the uncommon case where you're rebuilding a release, but reusing
   the same version number, remove the distfile tarball before running
   this command. On FreeBSD, it's in `/usr/ports/distfiles`. On
   DragonFlyBSD, it's in `/usr/distfiles`.

   On DragonFly, the base is `/usr/obj/dports`, so, the commands below
   need to be run via `sudo(8)`. Alternatively, I think that the
   WORKDIR environment variable can be set to a different location
   that's writable by a normal user. On FreeBSD, it's done in `work`
   in the current directory, so `sudo(8)` isn't needed.

4. If the Rust crates have never been defined, or have changed, get the
   configuration for them by doing the following:

   `make cargo-crates`
	   
   Paste the result of this into the Makefile.
   
5. Regenerate the `distinfo` file:

	`sudo make makesum`
   
4. Go through package building steps (these are taken from the FreeBSD
   Porters Handbook):

   ```
   sudo make clean
   sudo make stage
   sudo make check-orphans
   sudo make package
   sudo make install
   sudo make deinstall
   ```
5. Install the built package:
   ```
   sudo pkg install /usr/obj/dports/src/accessd-port/pkg/accessd-1.0.0.txz
   ```
