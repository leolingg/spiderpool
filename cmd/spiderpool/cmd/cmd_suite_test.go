// Copyright 2022 Authors of spidernet-io
// SPDX-License-Identifier: Apache-2.0

package cmd_test

import (
	"net"
	"testing"

	. "github.com/onsi/ginkgo/v2"
	. "github.com/onsi/gomega"

	"github.com/spidernet-io/spiderpool/api/v1/agent/server"
	"github.com/spidernet-io/spiderpool/cmd/spiderpool-agent/cmd"
)

var (
	unixServer *server.Server
	err        error
)

func TestCmd(t *testing.T) {
	RegisterFailHandler(Fail)
	RunSpecs(t, "Cmd Suite")
}

var _ = BeforeSuite(func() {
	unixServer, err = cmd.NewAgentOpenAPIUnixServer()
	Expect(err).NotTo(HaveOccurred())

	go func() {
		if err = unixServer.Serve(); nil != err {
			if err == net.ErrClosed {
				return
			}
			By(err.Error())
		}
	}()
})

var _ = AfterSuite(func() {
	err = unixServer.Shutdown()
	Expect(err).NotTo(HaveOccurred())
})
