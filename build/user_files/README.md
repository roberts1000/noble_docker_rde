# README

The `user_files` folder contains files that customize the build process. Since the Docker build process doesn't have an
interactive mode, your custom information is prepopulated in these files, and referenced at build time.

Define the following files inside this folder:

1. `full_name`            - A file with a single line that contains the name you want to use as the commit author in Git.
2. `email_address`        - A file with a single line that contains the email address you want to use in Git.
3. `id_rsa`               - A private key to copy into an image's `~/.ssh/` folder.
4. `id_rsa.pub`           - A public key to copy into an image's `~/.ssh/` folder.
5. `.bashrc_additions`    - An optional file. The file will be sourced by `~/.bashrc`.
6. `rubygems_credentials` - An optional file. This file will be copied to `~/.gem/credentials`. The file should have the
                            following content, with `XYZ` replaced with your real API key.
        
                            ---
                            :rubygems_api_key: XYZ
