---
title: "Release Engineering"
authors: ["Dinah McNutt"]
---

Release engineering is a first-class discipline at Google. Release engineers define the steps required to put software in production (source control, build process, testing, packaging, deployment). It's important that product teams are free to focus on product, and not on (poorly) reinventing the release process; release engineers ensure that best practices are followed consistently throughout the company.

Philosophy of release engineering at Google:
- Self-service model: product development teams are in control of their own release process; individual releases don't require intervention from release engineering 
- High velocity: customer facing features are rolled out as quickly as possible; frequent releases means fewer changes between consecutive releases, which makes testing and troubleshooting easier
- Hermetic builds: builds should be repeatable; two builds at the same revision of the source repository should product identical results

Most projects don't release directly from master. Rather, master is forked onto a separate branch for a given release of a service; changes from this branch are never merged. By using a separate branch, bugfixes can be cherrypicked and released onto the service without bringing with them unrelated changes to the code.

Four models of configuration management at Google:
- Record configuration at the head of master, applying the current head's configuration with each release (con: configuration in the repo can be out of sync with configuration as running in production)
- Include configuration in the built package for a service (pro: only need to deploy a single package; con: binary and configuration are tightly coupled - both need to be released at once)
- Build separate packages for binaries and for configuration (useful for e.g. feature flags, since configuration can be deployed separate from the binary)
- Store configuration in an external store (e.g. Chubby) (useful if configuration changes frequently or dynamically)
