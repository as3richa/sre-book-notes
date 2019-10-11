---
title: "Service Level Objectives"
authors: ["Chris Jones", "John Wilkes", "Niall Murphy"]
---

SLIs (service level indictors) should be chosen as a function of the expectations of your users.

Most metrics are better considered as distributions rather than averages, e.g. average request latency obscures the potential long tail of slow requests. Indicators can be constructed as some percentile of a metric instead, e.g. p99 request latency.

Choose user-oriented objectives and work backwards to find useful indicators; don't pick indicators with arbitrary target values.

Error budgets are applicable to missed SLOs; an error budget is really just an SLO for SLOs.

Slose should be a major driver in prioritizing work for SREs and developers, because they reflect what users care about; "if you can't ever win a conversation about priorities by quoting a particular SLO, it's not worth having that SLO". However, not all product attributes are amenable to being SLOs, e.g. "user delight".

Poorly-chosen SLOs require heroic development effort to meet without commensurate improvement in user experience.

Publishing SLOs sets expectations for system behaviour. Keep a tighter internal SLO than any published SLO as a safety margin. Don't overachieve, otherwise consumers will over-depend on your service (e.g. Chubby lock incidents at Google); consider throttling the service at low loads, inecting faults, etc.
