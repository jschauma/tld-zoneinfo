#! /bin/sh
#
# Originally written by Jan Schaumann
# <jschauma@netmeister.org> in May 2023.
#
# https://github.com/jschauma/tld-zoneinfo
# https://www.netmeister.org/blog/tlds.html
#
# This script fetches the list of registered domain
# names under the fi. ccTLD via their OData interface.
#
# This script is in the public domain.

set -eu

tdir=$(mktemp -d)
URL="https://odata.domain.fi/odata/Domains/"

total=0
n=0

count=$(curl -s "${URL}\$count")
while true; do
	curl -s "${URL}" > ${tdir}/json
	URL=$(jq -r '.["@odata.nextLink"]' < ${tdir}/json)
	jq -r '.value[].Name' <${tdir}/json | sed -e 's/$/.fi/' >> ${tdir}/names
	rm ${tdir}/json
	n=$(( n + 1 ))
	# Looks like getting 100 names / request is the max.
	total=$(( n * 100 ))
	echo "=> ${total} / ${count} (" $(echo "scale=2; (${total} / ${count}) * 100 " | bc -l) " %)"
	if [ ${total} -gt ${count} ]; then
		break
	fi
	# Let's be nice to the server.
	sleep 1
done

echo ${tdir}/names
