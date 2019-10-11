---
title: "Monitoring Distributed Systems"
authors: ["Rob Ewaschuk"]
---

Rules that generate alerts for humans should be simple to understand and represent a clear failure.

Monitoring must address two questions: what's broken, and why?

White-box vs. black-box monitoring: metrics based on system internals (e.g. an HTTP endpoint exposing statistics) vs. testing externally visible behaviour as a user would see it. Black-box monitoring is symptom oriented and represents ongoing, visible problems. White-box monitoring allows for the detection of imminent problems, internal failures masked by retries, etc. N.B. one service's symptom could be another service's cause.

Four golden signals: latency, traffic, errors, and saturation.

When creating rules for monitoring or alerting, consider the following questions:
- Does this rule avoid an otherwise-undetected condition that is urgent, actionable, and (imminently) user-visible?
- Will I ever be able to ignore this alert, knowing that it's benign? When and why?
- Does this alert definitely indicate that users are being negatively affected? Are there detectable cases where users aren't being impacted?
- Is this alert actionable? Could the action be automated? Is the action urgent? Is the action a long-term fix or a short-term workaround?
- Are other people already being paged for the issue?

Pages should be about novel problems or events that haven't been seen before. Every page should be urgently actionable.

Decisions about monitoring must be made with long-term goals in mind; every page that happens today distracts from improving the service for tomorrow, so there may be a case to take a short-term loss of availability in order to improve the long-term outlook for the service.
