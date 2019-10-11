---
title: "Introduction"
authors: ["Benjamin Treynor Sloss"]
---

Site reliability engineers are engineers (i.e. not sysadmins) who support a set of services, in terms of their availability, latency, performance, efficiency, change management, monitoring, emergency response, and capacity planning.

In a sysadmin model, work tends to scale with load against the service, whereas (because they are encouraged and incentivized to engineer solutions to toil) SRE workload grows sublinearly.

At most 50% of an SRE's time should be spend on operational (sysadmin) work; if this boundary is exceeded, a "safety valve" is triggered - operational work is reallocated to the product development team. Product developer thus have an incentive to develop services that don't require manual intervention.

SREs are responsible for incident response. Every significant incident requires a (blameless) post-mortem.

In typical organizational structures, product development and operations are at odds, because product wants to ship as much as possible as quickly as possible, whereas operations wants to avoid shipping anything that risks breaking a stable product. SRE uses the concept of an error budget to realign incentives.

100% reliability is almost never the correct reliability target; having set an appropriate reliability target, the error budget is one minus the target. If ever the error budget is exceeded, all changes are frozen until overall reliability recovers to acceptable levels; hence, development teams are encouraged to implement e.g. phased rollout to avoid depleting the budget on risky changes.

Alerts should only be triggered for situations that require urgent human intervention. Tickets should be created for non-urgent situations that nonetheless require intervention.

A practiced engineer armed with an incident response playbook beats a heroic jack-of-all-trades engineer in an emergency.

Capacity planning requires accurate demand forecasts, as well as load testing to correlate raw capacity (CPUs, disks, etc.) to effective service capacity.

SREs provision resources in order to meet a particular capacity at a particular response speed.
