This directory contains information about how to
access DNS zone data for the different top-level
domains (TLDs).

The Root Zone (`.`)
=================

https://www.iana.org/domains/root/files

```
dig +noall +answer +noidnout +onesoa @f.root-servers.net . AXFR
```

Infrastructure domain (`arpa.`)
=============================

Available via AXFR:

```
dig +noall +answer +noidnout +onesoa @$(dig +short ns arpa. | head -1) arpa AXFR
```

This zone can also be walked using NSEC discovery.

Original Top-Level Domains (TLDs)
=================================

`edu.`
----

Per inquiry to https://www.educause.edu/, the zone is
only made available "_when the proposed use of the
zone file directly contributes to the security of the
domain_."

Inquiries should be sent to edu@educause.edu.

`mil.`
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

International (`int.`)
--------------------

Per inquiry to tld-contact@iana.org, the zone for
`int.` is not available to the public.

Post (`post.`)
-------------

You can apply for Zone File Access on the `upu.int`
website:

https://www.upu.int/en/Universal-Postal-Union/Activities/Digital-Services/-POST-Domain/Zone-file-access

The form itself is available on ICANN's website:

https://www.icann.org/en/registry-agreements/post/post-agreement-appendix-3--zone-file-access-agreement-11-12-2009-en

Country Code Top-Level Domains (ccTLDs)
=======================================

ccTLDs are not covered by the ICANN requirement to
make zone data available to the public.  When
contacted, most ccTLD operators deny the request.

The following are exceptions / additional notes:

Armenia (`am.`)
-------------

AMNIC makes some statistics available here:

https://amnic.net/statistics/

Argentina (`ar.`)
---------------

`nic.ar` does not make the zone file or data available
to the public, but provides some statistics here:

https://nic.ar/es/dominios/estadisticas

Austria (`at.`)
-------------

`nic.at` makes some statistics available here:

https://www.nic.at/en/good_to_know/statistics-and-studies/statistics

Azerbaijan (`az.`)
----------------

`whois.az` makes some statistics available here:

https://whois.az/?page_id=783

Bosnia and Herzegovina (`ba.`)
----------------------------

`nic.ba` does not make the zone file or data available
to the public, but provides some statistics here:

https://nic.ba/Statistics/Statistics

Belgium (`be.`)
-------------

`dnsbelgium.be` does not make the zone file or data
available to the public, but provides some statistics
here:

https://www.dnsbelgium.be/en/statistics


Brazil (`br.`)
------------

Registro.br does not make the zone file or data
available to the public, but provides some statistics
here:

https://registro.br/dominio/estatisticas/

@MatheusAvellar has compiled an incomplete and
unofficial list of `br.` domains at
https://lab.avl.la/.br/.

This zone can also be walked using NSEC discovery.


Bouvet Island (`bv.`)
-------------------

The `bv.` ccTLD has never been open for registrations.
Per feedback from `norid.no`, the zone file
is empty, except for the required apex resource
records.

See also:
https://www.norid.no/en/omnorid/toppdomenet-bv/


Democratic Republic of the Congo (`cd.`)
--------------------------------------

The zone for `cd.` appears to be available via `AXFR`
from some of the `NS` records listed in the root zone:

```
dig +noall +answer +noidnout +onesoa @ns-root-22.scpt-network.net. cd. AXFR
```


Switzerland (`ch.`)
-----------------

Switch.ch provides open data access to the `ch.` zone
via TSIG authenticated `AXFR`:

https://www.switch.ch/open-data/#tab-c5442a19-67cf-11e8-9cf6-5254009dc73c-3

Cape Verde (`cv.`)
----------------

The zone for `cv.` appears to be available via `AXFR`
from some of the `NS` records listed in the root zone:

```
dig +noall +answer +noidnout +onesoa @cv01.dns.pt. cv. AXFR
```

Curaçao (`cw.`)
-------------

`uoc.cw` posts the list of registered domains at

https://www.uoc.cw/domain-registration/cw-registered-domains


Czech Republic (`cz.`)
--------------------

CZ.nic does not make the `cz.` zone available to the
public, but some statistics are published here:

https://stats.nic.cz/dashboard/en/Summary.html

Denmark (`dk.`)
-------------

`punktum.dk` makes available some statistics here:

https://stats.punktum.dk/da/domains/total_domains

Dominican Republic (`do.`)
------------------------

`nic.do` makes available some statistics here:

https://www.nic.do/en/about-nic-do/statistics/

Algeria (`dz.`)
-------------

`nic.dz` makes available some statistics here:

http://www.nic.dz/en/

This zone can also be walked using NSEC discovery.

Eritrea (`er.`)
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


Estonia (`ee.`)
-------------

Per https://www.internet.ee/domains/ee-zone-file, the
`ee.` zone file is available via `AXFR`:

```
dig +noall +answer +noidnout +onesoa @zone.internet.ee ee. AXFR
```

This zone can also be walked using NSEC discovery.

European Union (`eu.`, `xn--qxa6a` / `.ευ`, and `xn--e1a4c` / `.ею`)
----------------------------------------------------------

`eurid.eu` makes some statistics available here:

https://eurid.eu/en/welcome-to-eurid/statistics/

Fiji (`fj.`)
----------

The zone for `fj.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @ns1.fj fj. AXFR

```

Finland (`fi.`)
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
script](https://github.com/jschauma/tld-zoneinfo/blob/main/tools/fetch-fi.sh) for an example.

France (`fr.`)
------------

AFNIC does not provide access to the zone file, but
publishes some zone data, including the list of
registered domains at:

https://www.afnic.fr/produits-services/services-associes/donnees-partagees/

Georgia (`ge.`)
-------------

`nic.ge` provides some statistics here:

https://nic.ge/en/administrator/statistics


Guadeloupe (`gp.`)
----------------

The zone for `gq.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @ns2.nic.gp gp. AXFR
```


Guatemala (`gt.`)
---------------

`www.gt` provides some statistics here:

https://www.gt/estadisticas/


Hong Kong (`hk.`)
---------------

`hkirc.hk` provides some statistics here:

https://www.hkirc.hk/zh-hant/news/statistics/


Hungary (`hu.`)
-------------

`domain.hu` provides some statistics here:

https://info.domain.hu/stats/hu

Haiti (`ht.`)
-----------

`nic.ht` provides some statistics here:

https://nic.ht/en/


Indonesia (`id.`)
---------------

The website for `pandi.id` pulls some stats from this
URL:

https://pandi.id/api/v1/domain-statistics/legacy/stats


Ireland (`ie.`)
-------------

`weare.ie` provides some statistics here:

https://www.weare.ie/ie-domain-profile-report/


Israel (`il`. and `xn--4dbrk0ce.` / `.ישראל`)
---------------------------------------

`isoc.org.il` provides some statistics here:

https://en.isoc.org.il/il-cctld/number-of-registered-domain-names-2023


Iran (`ir.`)
----------

`nic.ir` provides some statistics here:

https://www.nic.ir/Statistics


Iceland (`is.`)
-------------

`isnic.is` provides some statistics here:

https://www.isnic.is/en/tolur


Italy (`it.`)
-----------

`nic.it` provides some statistics here:

https://stats.nic.it/domain/growth


Jordan (`jo`. and `xn--mgbayh7gpa.` / `.الاردن`)
-----------------------------------------

`dns.jo` provides some statistics here:

https://www.dns.jo/stat.aspx

Japan (`jp.`)
-----------

JPRS provides some statistics here:

https://jprs.co.jp/en/stat/


South Korea (`kr`. and `xn--3e0b707e.` / `.한국`)
-------------------------------------------

KRNIC provides some statistics here:

https://krnic.or.kr/jsp/statboard/domain/reg/currentNation.jsp

Liechtenstein (`li.`)
-------------------

Switch.ch provides open data access to the `li.` zone
via TSIG authenticated `AXFR`:

https://www.switch.ch/open-data/#tab-c5442a19-67cf-11e8-9cf6-5254009dc73c-3

Lithuania (`lt.`)
---------------

`domreg.lt` makes some statistics available here:

https://www.domreg.lt/en/information/lt-domain-statistics/

Latvia (`lv.`)
------------

`nic.lv` makes some statistics available here:

https://www.nic.lv/lv/statistika and
https://www.nic.lv/lv/latviskie-domena-vardi

Morocco (`ma.`)
-------------

`registre.ma` makes some statistics available here:

https://www.registre.ma/language/en/resources/e-statistiques

Malawi (`mw.`)
------------

The zone for `mw.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @domwe.sdn.mw. mw. AXFR
```

Note: this domain offers registration under several
second-level names (`ac.mw.`, `co.mw.`, `com.mw.`,
`coop.mw.`, `edu.mw.`, `gov.mw.`, `int.mw.`,
`museum.mw.`, `net.mw.`, `org.mw.`); some of these
domains are also available via `AXFR`.


Mexico (`mx.`)
------------

NIC Mexico makes some statistics available here:

https://www.nicmexico.mx/estadisticas/

Netherlands (`nl.`)
-----------------

SIDN Labs makes some statistiks available here:

https://stats.sidnlabs.nl/nl/


Nicaragua (`ni.`)
---------------

The zone for `ni.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @ns.ideay.net.ni. ni. AXFR
```

Note: this domain offers registration under several
second-level names (`biz.ni.`, `co.ni.`, `com.ni.`,
`edu.ni.`, `gob.ni.`, `info.ni.`, `int.ni.`,
`mil.ni.`, `net.ni.`, `nom.ni.`, `org`); some of these
domains are also available via `AXFR`.


Norway (`no.`)
------------

norid.no does not make zone data for the `no.` ccTLD
available to the public, but provides some statistics
here:

https://www.norid.no/en/om-domenenavn/nokkeltall/


Niue (`nu.`)
----------

The Swedish Internet Foundation provides access to the
`nu.` zone via `AXFR`:

```
dig +noall +answer +noidnout +onesoa @zonedata.iis.se nu. AXFR
```

They also make available some statistics here:

https://internetstiftelsen.se/en/domains/domain-statistics/growth-nu/

New Zealand (`nz.`)
-----------------

dns.org.nz does not make the `nz.` zone available to
the public, but you can submit a request for access
here:

https://dnc.org.nz/tools-and-services/how-do-i-2/request-the-zone-data-file/

They also make available some statistics here:

https://docs.internetnz.nz/legacy/reports/

Poland (`pl.`)
------------

`dns.pl` makes some statistics available here:

https://www.dns.pl/en/statistics/number_of_active_names_in_DNS_zone

Palestine (`ps.`)
---------------

`nic.ps` makes some statistics available here:

https://www.nic.ps/statistics/


Portugal (`pt.`)
--------------

pt.pt does not make the `pt.` zone available to
the public, but you can submit a request for access
here:

https://www.pt.pt/en/data-protection/zone-file-access-policy/

The request will ask for the purpose, required access,
associated organizations, and ultimately request a
government ID to be submitted together with the zone
file sharing agreement.

In addition, `pt.pt` makes sme statistics available
here:

https://www.pt.pt/pt/estatisticas/

Russia (`ru.`)
------------

`statdom.ru` makes available some statistics here:

https://statdom.ru/tld/ru/report/summary/


Saudi Arabia (`sa.`)
------------------

`nic.sa` makes available some statistics at

https://nic.sa/en/

Singapore (`sg.`)
---------------

`sgnic.sg` makes available some statistics at

https://www.sgnic.sg/about-us/registration-statistics


Svalbard and Jan Mayen (`sj.`)
----------------------------

The `sj.` ccTLD for Svalbard/Spitsbergen and Jan Mayen
has never been open for registrations.  Per feedback
from `norid.no`, the zone file is empty, except for
the required apex resource records.

See also:
https://www.norid.no/en/omnorid/toppdomenet-sj/


Slovakia (`sk.`)
--------------

SK-NIC does not provide access to the zone file, but
publishes a list of registered domains at:

https://sk-nic.sk/subory/domains.txt

Sweden (`se.`)
------------

The Swedish Internet Foundation provides access to the
`se.` zone via `AXFR`:

```
dig +noall +answer +noidnout +onesoa @zonedata.iis.se se. AXFR
```

They also make available some statistics here:

https://internetstiftelsen.se/en/domains/domain-statistics/growth-se/

Sierra Leone (`sl.`)
------------------

The zone for `sl.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @ns2.neoip.com sl. AXFR
```

Note: this domain offers registration under several
second-level names (`com.sl`, `edu.sl`, `gov.sl`,
`net.sl`, `org.sl`); some of these domains are also
available via `AXFR`.

This zone can also be walked using NSEC discovery.

Soviet Union (`su.`)
------------------

(TLD still in use.)

`statdom.ru` makes available some statistics here:

https://statdom.ru/tld/su/report/summary/

Thailand (`th.`)
--------------

`thnic.co.th` makes available some statistics here:

https://www.thnic.co.th/stats

Tunisia (`tn.`)
-------------

`registre.tn` makes some statistics available here:

https://www.registre.tn/fr/index.php?rub=262&srub=329

Turkey (`tr.`)
------------

TRABIS provides some statistics here:

https://www.trabis.gov.tr/ozet

Taiwan (`tw.`)
------------

`twnic.tw` provides some statistics here:

https://www.twnic.tw/item02.php

Ukraine (`ua.`)
-------------

`hostmaster.ua` makes some statistics available here:

https://www.hostmaster.ua/UAstat/

United Kingdom (`uk.`)
--------------------

Nominet makes some statistics available here:

https://www.nominet.uk/news/reports-statistics/


United States (`us.`)
-------------------

Godaddy / Registry Services does not make the `us.`
zone available to the public, but a request for access
for research purposes can be made via email to
iana@about.us.

Once authorized, access can be automated using the
Files.com API:

https://developers.files.com/#download-file

Uruguay (`uy.`)
-------------

`nic.uy` makes some statistics available here:

https://www.nic.uy/Registrar/estadist/index.htm

Uzbekistan (`uz.`)
----------------

`cctld.uz` makes some statistics available here:

https://www.cctld.uz/stat/

South Africa (`za.`)
------------------

`registry.net.za` makes some statistics available here:

https://registry.net.za/domain_stats.php


Internationalized country code top-level domains (IDN ccTLDs)
=============================================================

Bangladesh "Bangla" (`xn--54b7fta0cc.` / `.বাংলা`)
----------------------------------------------

The zone for `xn--54b7fta0cc.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @bayanno.btcl.net.bd. xn--54b7fta0cc. AXFR
```

This zone can also be walked using NSEC discovery.

Palestine (`xn--ygbi2ammx.` / `.فلسطين`)
------------------------------------

The zone for `xn--ygbi2ammx.` appears to be available via `AXFR`
from some of its `NS` records:

```
dig +noall +answer +noidnout +onesoa @ns1.gov.ps xn--ygbi2ammx. AXFR
```

Russia (`xn--p1ai.` / `.рф`)
------------------------

`statdom.ru` makes available some statistics here:

https://statdom.ru/tld/рф/report/summary/


Thailand (`xn--o3cw4h.` / `.ไทย`)
-----------------------------

`thnic.co.th` makes available some statistics here:

https://www.thnic.co.th/stats


Tunisia (`xn--pgbs0dh.` / `.تونس`)
------------------------------

`registre.tn` makes some statistics available here:

https://www.registre.tn/fr/index.php?rub=262&srub=329


NSEC Discovery
==============

As of 2023-07-08, The following TLDs use
[NSEC](https://www.netmeister.org/blog/dns-rrs.html#nsec)
records and thus can be discovered by walking the zone
using e.g.,
[ldns-walk](https://github.com/NLnetLabs/ldns):

* `audio.`
* `auto.`
* Åland (`ax.`)
* Bangladesh (`bd.`)
* Bhutan (`bt.`)
* `car.`
* `cars.`
* `christmas.`
* Ivory Coast (`ci.`)
* Cyprus (`cy.`)
* `diet.`
* Algeria (`dz.`)
* Estonia (`ee.`)
* `flowers.`
* `game.`
* Global Domain Name (`gdn.`)
* Guinea (`gn.`)
* `guitars.`
* `hosting.`
* Kyrgyzstan (`kg.`)
* Kazakhstan (`kz.`)
* Lebanon (`lb.`); strict second-level domain name separation, divided into:
  - `com.lb.`
  - `edu.lb.`
  - `gov.lb.`
  - `net.lb.`
  - `org.lb.`
* Sri Lanka (`lk.`)
* Liberia (`lr.`)
* Monaco (`mc.`)
* Puerto Rico (`pr.`)
* `ruhr.`
* Venezuela (`ve.`)
* Kazakhstan (`xn--80ao21a.` / `.қаз`)
* Sri Lanka (`xn--fzc2c9e2c.` / `.ලංකා`)
* Mongolia (`xn--l1acc.` / `.мон`)
* Sri Lanka (`xn--xkc2al3hye2a.` / `.இலங்கை`)


See also
========

A lot of the above information was previously recorded
by Jan-Piet Mens at: https://jpmens.net/2021/05/18/dns-open-zone-data/

Additional links:
* https://www.netmeister.org/blog/tlds.html
