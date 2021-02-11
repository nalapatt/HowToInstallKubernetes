#!/bin/bash -x
#########################################################################
#      Copyright (C) 2020        Sebastian Francisco Colomar Bauza      #
#      SPDX-License-Identifier:  GPL-2.0-only                           #
#########################################################################
set -x									;
#########################################################################
test -n "${engine}"		|| exit 101                             ;
test -n "${HostedZoneName}"	|| exit 102                             ;
test -n "${ip_leader}"          || exit 103                             ;
test -n "${ip_master1}"		|| exit 104                             ;
test -n "${ip_master2}"		|| exit 105                             ;
test -n "${ip_master3}"		|| exit 106                             ;
test -n "${mode}"		|| exit 107                             ;
test -n "${os}"			|| exit 108                             ;
test -n "${stack}"		|| exit 109                             ;
test -n "${version_major}"	|| exit 110                             ;
test -n "${version_minor}"	|| exit 111                             ;
#########################################################################
file=common-functions.sh                                                ;
path=lib                                                                ;
#########################################################################
source ./${path}/${file}                                                ;
#########################################################################
file=init-${mode}.sh                                                    ;
path=bin                                                                ;
#########################################################################
source ./${path}/${file}                                                ;
#########################################################################
