---
title: "A Collection of Best Practices for Production Services"
authors: ["Ben Treynor Sloss"]
---

- Fail sanely. Sanitize and validate configuration inputs; respond to implausible inputs by continuing to operate in the previous state while simultaneously alerting on the situation
- Implement progressive rollouts, i.e. canarying; consider performing different stages in different geographies
- Define SLOs from the perspective of the end user
- Balance reliability and the pace of innovation with error budgets
- Implement monitoring; distinguish pages (a human must intervene now), tickets (a human must do something in the next few days), logging (informational data for analysis in the event of an emergency)
- Implement blameless post-mortems; assume the people involved in an incident are intelligent and well-intentioned
- Perform capacity planning; overprovision slightly for redundancy; plan by load testing rather than tradition; don't mistake day-one load for steady-state load
- Degrade as gracefully as possible in the case of overload; practice graceful load shedding when necessary
- Retry only with jittered exponential backoff
- SRE teams should spend at most 50% of their time on operational work; operational work can be pushed back to the developers if necessary
- Ensure that your on-call rotation has at least 8 people
- Practice handling hypothetical outages routinely
