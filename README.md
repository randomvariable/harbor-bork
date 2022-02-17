# Man in the middling a kubernetes kind cluster

1. Check out this repo
2. Start a kind cluster with `kind create cluster`
3. Run `docker ps` to get the control plane container ID
4. Then run `./mitm.sh <container-id>` . This will set up the proxy
5. Run `mitmproxy -k`
6. Deploy `test.yaml` to pull a image from projects.registry.vmware.com
7. Intercept

Note, check `10-proxy.conf` and replace the proxy address with whatever your host IP on the docker network is.

The IP I used is the default kind network IP on Fedora Linux. I expect it to be different for MacOS
