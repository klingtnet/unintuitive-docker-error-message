# Unintuitive Error Message

This repository should demonstrate the unintuitive error message that is shown by the docker daemon if a user tries to run a container with a file mounted to the location of an existing file in the container.
Note that the error is only shown if the file on the host is missing.
Nonetheless, a clear error message would look like: `file '/foo/bar.sh' is missing`.

## Instructions

Steps to reproduce the message:

```sh
$ git clone https://github.com/klingtnet/unintuitive-docker-error-message.git && cd unintuitive-docker-error-message && ./trigger-error.sh 
docker: Error response from daemon: oci runtime error: rootfs_linux.go:53: mounting "/var/lib/docker/devicemapper/mnt/293288098b315e070975512b52113dc6cbe49d5de455f1cb6f113729520fe2e9/rootfs/usr/bin/foo" to rootfs "/var/lib/docker/devicemapper/mnt/293288098b315e070975512b52113dc6cbe49d5de455f1cb6f113729520fe2e9/rootfs" caused "not a directory".
```
