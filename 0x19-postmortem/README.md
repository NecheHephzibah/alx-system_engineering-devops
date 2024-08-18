Incident Report: DNS Resolution Issue
Issue Summary
Duration of Outage: August 17, 2024, 14:00 - 16:45 UTC (2 hours 45 minutes)
The API responsible for handling user transactions became unreachable due to DNS resolution issues. This led to a 65% drop in successful transactions, leaving many users needing help to complete their activities and encountering error messages instead.
The outage was caused by a misconfigured DNS setting – a classic case of “who moved my DNS?” – which prevented the API domain from being resolved correctly. Without proper DNS resolution, our servers might as well have been on another planet, to say the least.
Timeline
14:00 UTC - Issue detected: Datadog alerts us that our API traffic has dropped like it’s hot—except not in a good way.
14:04 UTC - The engineering team was alerted; initial checks revealed that the issue was not related to the API gateway or certificates.
14:45 UTC - Investigation initially focused on API authentication and certificates, which were found to be functioning correctly.
15:10 UTC - The incident escalated to the Networking Gurus who specialise in digital scavenger hunts.
15:45 UTC - The Root was identified to be misconfigured DNS settings which were preventing proper resolution of the API domain.
16:20 UTC - DNS settings were corrected and propagated; monitoring confirmed that the API became accessible again.
16:45 UTC - Service was fully restored, and all systems were functioning normally.
Root Cause and Resolution
The outage occurred due to incorrect DNS settings that failed to resolve the API domain. This misconfiguration led to an inability to connect to the API, affecting a significant portion of our users.
The resolution involved correcting the DNS configuration and ensuring that the changes were properly propagated. Additional monitoring was implemented to track DNS resolution and prevent similar issues in the future.
Corrective and Preventative Measures
Improvements:
**Enhance DNS configuration checks to prevent misconfigurations.
**Implement more redundancy in our DNS setup, because one is never enough.
**Strengthen monitoring for DNS resolution issues to quickly detect and address any problems.
Tasks:
**Review and update DNS configurations to ensure accuracy.
**Set up automated alerts for DNS resolution issues.
**Conduct a review of DNS management practices and provide additional training if necessary.
**Document the incident and update the incident response plan to include DNS-related scenarios.
