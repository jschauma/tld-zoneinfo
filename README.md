This directory contains information about how to
access DNS zone data for the different top-level
domains (TLDs).

The Root Zone (.)
=================

https://www.iana.org/domains/root/files

```
dig +noall +answer +noidnout +onesoa @f.root-servers.net . AXFR
```

Infrastructure domain (arpa.)
=============================

Available via AXFR:

```
dig +noall +answer +noidnout +onesoa @$(dig +short ns arpa. | head -1) arpa AXFR
```

Original Top-Level Domains (TLDs)
=================================

edu.
----

Per inquiry to https://www.educause.edu/, the zone is
only made available "_when the proposed use of the
zone file directly contributes to the security of the
domain_."

Inquiries should be sent to edu@educause.edu.

mil.
----

Per inquiry to the technical contact listed in WHOIS,
the data for `mil.` is not made available.


Generic Top-Level Domains (gTLDs)
=================================

DNS zone data is available for the generic TLDs per
ICANN requirements via their Centralized Zone Data
Service at https://czds.icann.org/.

Most gTLD operators provide this data without much
push back. Some gTLD operators require you to submit
an explanation of why you require access, others
require you to submit some personal information (e.g.,
contact information, postal address, associated IP
addresses), and [yet
others](https://mstdn.social/@jschauma/110306237694079456)
ask to see your ID.

Sponsored Top-Level Domains (sTLDs)
===================================

International (int.)
--------------------

Per inquiry to tld-contact@iana.org, the zone for
`int.` is not available to the public.



Country Code Top-Level Domains (ccTLDs)
=======================================

ccTLDs are not covered by the ICANN requirement to
make zone data available to the public.  When
contacted, most ccTLD operators deny the request.

The following are exceptions:

Democratic Republic of the Congo (cd.)
--------------------------------------

The zone for `cd.` appears to be available via `AXFR`
from some of the `NS` records listed in the root zone:

```
dig +noall +answer +noidnout +onesoa @ns-root-22.scpt-network.net. cd. AXFR
```


Switzerland (ch.)
-----------------

Switch.ch provides open data access to the `ch.` zone
via TSIG authenticated `AXFR`:

https://www.switch.ch/open-data/#tab-c5442a19-67cf-11e8-9cf6-5254009dc73c-3

Cape Verde (cv.)
----------------

The zone for `cv.` appears to be available via `AXFR`
from some of the `NS` records listed in the root zone:

```
dig +noall +answer +noidnout +onesoa @cv01.dns.pt. cv. AXFR | more
```

Czech Republic (cz.)
--------------------

CZ.nic does not make the `cz.` zone available to the
public, but some statistics are published here:

https://stats.nic.cz/dashboard/en/Summary.html                                          


Eritrea (er.)
-------------

The zone for `er.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @zaranew.noc.net.er. er. AXFR
```

Note: this domain offers registration under several
second-level names (e.g., `com.er.`, `edu.er.`,
...); some of these domains are also available via
`AXFR`.


Estonia (ee.)
-------------

Per https://www.internet.ee/domains/ee-zone-file, the
`ee.` zone file is available via `AXFR`:

```
dig +noall +answer +noidnout +onesoa @zone.internet.ee ee. AXFR
```

Fiji (fj.)
----------

The zone for `fj.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @ns1.fj fj. AXFR

```

Finland (fi.)
-------------

The Finnish Communications Regulatory Authority does
not provide access to the zone, but provides
[OData](https://www.odata.org/) access to the
registered [domain
names](https://tieto.traficom.fi/en/datatraficom/open-data?toggle=Fi-domain%20names).

Sample request:
```
curl -s -H 'Accept: application/json' \
        'https://odata.domain.fi/OpenDomainData.svc/Domains?$inlinecount=allpages'
```

The entire list of registered domains can be fetched
via a simple loop.  See [this
script](./blob/main/tools/fetch-fi.sh) for an example.

France (fr.)
------------

AFNIC does not provide access to the zone file, but
publishes some zone data, including the list of
registered domains at:

https://www.afnic.fr/produits-services/services-associes/donnees-partagees/

Guadeloupe (gp.)
----------------

The zone for `gq.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @ns2.nic.gp gp. AXFR
```


Liechtenstein (li.)
-------------------

Switch.ch provides open data access to the `li.` zone
via TSIG authenticated `AXFR`:

https://www.switch.ch/open-data/#tab-c5442a19-67cf-11e8-9cf6-5254009dc73c-3

Malawi (mw.)
------------

The zone for `mw.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @domwe.sdn.mw. mw. AXFR
```

Nicaragua (ni.)
---------------

The zone for `ni.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @ns.ideay.net.ni. ni. AXFR
```

Note: this domain offers registration under several
second-level names (e.g., `com.ni.`, `net.ni.`,
...); some of these domains are also available via
`AXFR`.

Niue (nu.)
----------

The Swedish Internet Foundation provides access to the
`nu.` zone via `AXFR`:

```
dig +noall +answer +noidnout +onesoa @zonedata.iis.se nu. AXFR
```

New Zealand (nz.)
-----------------

dns.org.nz does not make the `nz.` zone available to
the public, but you can submit a request for access
here:

https://dnc.org.nz/tools-and-services/how-do-i-2/request-the-zone-data-file/

Portugal (pt.)
--------------

pt.pt does not make the `pt.` zone available to
the public, but you can submit a request for access
here:

https://www.pt.pt/en/data-protection/zone-file-access-policy/

Slovakia (sk.)
--------------

SK-NIC does not provide access to the zone file, but
publishes a list of registered domains at:

https://sk-nic.sk/subory/domains.txt

Sweden (se.)
------------

The Swedish Internet Foundation provides access to the
`se.` zone via `AXFR`:

```
dig +noall +answer +noidnout +onesoa @zonedata.iis.se se. AXFR
```

Sierra Leone (sl.)
------------------

The zone for `sl.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @ns2.neoip.com sl. AXFR
```

Note: this domain offers registration under several
second-level names (e.g., `com.sl.`, `edu.sl.`, ...);
some of these domains are also available via `AXFR`.

United States (us.)
-------------------

Godaddy / Registry Services does not make the `us.`
zone available to the public, but a request for access
for research purposes can be made via email to
iana@about.us.


Internationalized country code top-level domains (IDN ccTLDs)
=============================================================

Bangladesh "Bangla" (xn--54b7fta0cc.)
-------------------------------------

The zone for `xn--54b7fta0cc.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @bayanno.btcl.net.bd. xn--54b7fta0cc. AXFR
```

Palestine (xn--ygbi2ammx.)
--------------------------

The zone for `xn--ygbi2ammx.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @ns1.gov.ps xn--ygbi2ammx. AXFR
```


See also
========

A lot of the above information was previously recorded
by Jan-Piet Mens at: https://jpmens.net/2021/05/18/dns-open-zone-data/

Additional links:
* https://www.netmeister.org/blog/tlds.html
