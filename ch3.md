---
title: "Embracing Risk"
authors: ["Marc Alvidrez"]
---

SRE seeks to balance the risk of unavilability with the goals of rapid innovation.

Reliability comes at the cost of redundant computing resources and at the opportunity cost of investing engineering effort that could have been used for feature development.

Availability is usually measured as the proportion of uptime to total time, but this is less meaningful at a global scale (regional outages, etc.), so Google uses request success rate.

Product managers dictate the risk tolerance of consumer services as a function of the business requirements.

"If we were to add another nine, what would our incremental increase in revenue be?"

Infrastructure services should be delivered wtih explicitly delineated levels of services, so dependees can make the correct risk/cost tradeoffs when building the services.
