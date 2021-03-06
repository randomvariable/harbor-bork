#!/bin/python


from mitmproxy.addons import export
from mitmproxy.io import FlowReader

filename = 'direct-vpn.mitm'

with open(filename, 'rb') as fp:
    reader = FlowReader(fp)

    for flow in reader.stream():
        print(export.httpie_command(flow))
