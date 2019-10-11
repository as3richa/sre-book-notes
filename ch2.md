---
title: "The Production Environment at Google, from the Viewpoint of an SRE"
authors: ["JC van Winkel"]
---

For the most part, hardware in Google datacenters is homogeneous.

Machine: a piece or hardware, or perhaps a VM; server: a piece of software implementing a service. No specific machine is dedicated to any particular server; allocation is handled by Borg (a "cluster operating system").

Jupiter: high-performance virtual switch for intra-datacenter communication. B4: Google's globe-spanning backbone network.

Each task specifies its required required resources (e.g. 2 cores, 4 GiB of RAM); Borg allocates tasks across the fleet (with each machine potentially taking on multiple tasks, i.e. binpacking) subject to "failure domains" (e.g. distributing a set of tasks across multiple DCs for redundancy).
