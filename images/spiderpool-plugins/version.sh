#!/bin/bash

# Copyright 2024 Authors of spidernet-io
# SPDX-License-Identifier: Apache-2.0

# this file is generated by updateLatestCniPluginVersion.sh , please do not edit

# https://github.com/containernetworking/plugins
export CNI_VERSION=${CNI_VERSION:-"v1.6.2"}
# https://github.com/k8snetworkplumbingwg/ovs-cni
export OVS_VERSION=${OVS_VERSION:-"v0.38.2"}
# https://github.com/k8snetworkplumbingwg/rdma-cni
export RDMA_VERSION=${RDMA_VERSION:-"v1.2.1"}
# https://github.com/k8snetworkplumbingwg/sriov-cni
export SRIOV_VERSION=${SRIOV_VERSION:-"v2.9.0"}
# https://github.com/k8snetworkplumbingwg/ib-sriov-cni
export IB_SRIOV_VERSION=${IB_SRIOV_VERSION:-"v1.2.0"}
# https://github.com/Mellanox/ipoib-cni
export IPOIB_VERSION=${IPOIB_VERSION:-"v1.2.1"}
