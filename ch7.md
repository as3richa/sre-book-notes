---
title: "The Evolution of Automation at Google"
authors: ["Niall Murphy"]
---

Automation isn't just about saving time - it's about consistency, rapid repair and iteration, and reusability. Automation should yield a platform that can be expanded upon to apply to other systems.

In the context of SRE, automation is directed primarily towards managing infrastructure (e.g. lifecycle of clusters) rather than data (e.g. modifying user accounts on a service). As a concrete example, a major win for Google's SRE was automating MySQL failover on Borg.

Google developed Prodtest, a framework built on top of Python unit tests, to define prerequisites for production readiness of services in a given team's cluster. If a dependent team discovered a misconfiguration in another team's service, the dependee's Prodtest would be amended to prevent a similar misconfiguration from reoccurring. Later, the framework was modified to automatically apply idempotent fixes corresponding to the failing tests, allowing fixes to be applied automatically.

Prodtest centralized responsibility for the automation of cluster turnup onto SREs, which induced a misalignment of incentives: development teams weren't responsible for automating cluster turnup and therefore had no incentive to make their services amenable to automation. Later, responsibility was reassigned to product teams to build "Admin Servers" to automate the process of spinning up an individual service.
