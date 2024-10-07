# noble_docker_rde

`noble_docker_rde` is used to build Ubuntu 24.04 (Noble Numbat) based Docker containers suitable for developing Ruby applications. The image includes tools and libraries that are commonly used by Ruby developers and it significantly reduces the time needed to use Docker for development.

> :bulb: `noble_docker_rde` uses Docker in an atypical way. Instead of encapsulating a single application, it encapsulates a *development environment*.

## Versioning Strategy

Releases are versioned using [Semver 2.0.0](https://semver.org/spec/v2.0.0.html).

## Instructions

1. Clone the repo and `cd` into the project directory.
1. Open [build/user_files/README.md](build/user_files/README.md), read the file, and create the required files in that directory.
1. Open [build/binaries/README.md](build/binaries/README.md), read the file, and create the required files in that directory.
1. Download binaries and place them in the `binaries` directory:
1. Run [bin/build](bin/build), from the project root directory, to build the image. This will create a docker image named `noble_rde_image` with a tag of `latest`. If you want different build instructions, edit the file, or copy the command out of the [bin/build](bin/build) file and modify it on the command line before running it.

    ```
    $ bin/build
    ```

1. Run [bin/run](bin/run), from the project root directory, to turn the image into a container. This script assumes the image is named `noble_rde_image` and has a tag of `latest`. If you used a different image name when you built the image, you'll need modify [bin/run](bin/run). The bin/run creates a container named `noble_rde` by default. If you want something different, modify the file before running it.

    ```
    $ bin/run
    ```

1. The running container can be stopped by running `exit` inside the container's terminal. The container can be restarted with `bin/start`. See the `bin` directory for additional commands.

## Useful Info

1. **Users**
    1. **root user** - By default, containers have a `root` user with a password of `root`. You can change this by setting the `ROOT_USER_PWD` value in the [Dockerfile](Dockerfile).
    1. **dev user** - By default, container have a `dev` user with a password of `dev`. You can change this by setting the `DEV_USER` and `DEV_USER_PWD` values in the [Dockerfile](Dockerfile).
1. **PostgreSQL/MySQL** - Both PostreSQL and MySQL are installed and configured. By default, only MySQL is started when a container stats. If you would like to change this, go to the very bottom of the [Dockerfile](Dockerfile) and comment/uncomment the services you want started.
    1. **MySQL**
        1. **root user** - The `root` MySQL user does not have a password. Use `sudo mysql -u <root_user_here>` to login to `mysql`.
        1. **dev user** - By default, the RDE creates a MySQL user with the same name as the development user account, `dev`. If you change the `DEV_USER` environment variable to something other than `dev`, the MySQL user will match the new value. Use `mysql -u <dev_user_here> -p<dev_user_pwd_here>` to login.
1. **Proxies** - Proxy setup is turned off by default. To use a proxy, uncomment the appropriate section near the top of the [Dockerfile](Dockerfile).

## Support

Reports bugs or request changes on the [issue page](https://github.com/roberts1000/noble_docker_rde/issues).
