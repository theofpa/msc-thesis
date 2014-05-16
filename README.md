MSc thesis on Grid Computing Monitoring
==========
[![zenodo doi](https://zenodo.org/badge/3944/theofpa/msc-thesis.png)](http://dx.doi.org/10.5281/zenodo.9927)

My MSc thesis on Grid Monitoring

![brunel logo](https://github.com/theofpa/msc-thesis/blob/master/images/brunel_logo.png?raw=true)

A Dissertation submitted in partial fulfillment of the requirements for the degree of Master of Science.

Abstract
==========

EGI has replaced EGEE as the main European Grid Initiative. Multi Level Monitoring architecture suggested central points in regional level, where met- rics from each information system of the grid will be aggregated. MyEGI, MyEGEE and Nagios replace SAM in availability monitoring. Performance monitoring is approached using Ganglia as the source of performance metrics, and WSRF/BDII as the carier of that information.

Both Globus and gLite resource brokers come with their favorite informa- tion service. Grid Monitoring Architecture suggests the model by which the information should be discovered and transfered. Monitoring and Discovery Service is responsible to provide that information. Two different methods ex- ist about the way that the information is transfered, BDII and WSRF. Both implement the Glue schema, support Information Providers, and export the metrics in standard formats.

Linux kernel load average is the main metric that is taken by Ganglia, and through the information providers is passed to Nagios, LDAP and the con- tainer that supports the WSRF. Ganglia distribute the metrics to all its nodes using XDR over the multicast network. Nagios stores the historical data using NDOUtils to its database repository. Ganglia python client is integrated with BDII LDAP to provide real-time metrics of Gmond to information consumers. WSRF transforms through XSLT the XML taken by Gmond and passes it to the framework’s Index to be discovered and aggragated.

Finally, data are represented in graphs using RRDtool through pnp4nagios plugin of Nagios system. LDAP queries using PHP provide the real-time data from BDII. DOM library of PHP is used to parse data using XPath queries in WebMDS frontend of WSRF.

