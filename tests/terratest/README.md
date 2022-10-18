## About
This directory contains unit tests and integration tests.
The integration tests use the [examples-complete](../../examples/complete). This will create a
an Azure Private DNS zone and related DNS record esources which will be tested to ensure they are built correctly.


## Usage

From the root of the repo run
go mod init github.com/hmcts/cpp-module-terraform-azurerm-private-dns

To execute the tests execute the following from within the test file's folder:

Ensure your go environment is setup.

```bash
go test -v pre_test.go
```

Run the terratest which will validate the module.
```bash
az login (non-live)
az account set --subscription 8cdb5405-7535-4349-92e9-f52bddc7833a
go test -v -timeout 30m private_dns_test.go
```
