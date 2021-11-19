# gh
A docker image for the [gh](https://cli.github.com/manual/gh) cli command

## Authentication
This container supports the standard env argument when running commands.
i.e so you don't need to run login before running your commands.

## Examples

### Creating Releases
Create a release with an asset attached.
[Offical Docs](https://cli.github.com/manual/gh_release_create)

```bash
docker run --rm --name gh \
    --volume /path/to/app:/app \ 
    -w /app \
    -e GITHUB_TOKEN=[YOUR GITHUB TOKEN] \
    mdoq/gh release create 1.0.0 'some/file#nice-name'
```

### SSH Key
If the command you are running requires an SSH Key
```bash
docker run --rm --name gh \
    --volume /path/to/app:/app \
    --volume /path/to/.ssh:/home/[USER]/.ssh \
    --volume /etc/passwd:/etc/passwd:ro \
    --volume /etc/group:/etc/group:ro \
    --user 1000:1000 \
    -w /app \
    -e GITHUB_TOKEN=[YOUR GITHUB TOKEN] \
    mdoq/gh release create 1.0.0
```

Make sure `[USER]` matches the username of the user that has ID 1000 on the host system.


