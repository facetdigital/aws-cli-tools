# facetdigital/aws-cli-tools

Collection of simple AWS CLI commands and tools to do common things via the API, wrapped in a Docker container.

## Installation

```
git clone git@github.com:facetdigital/aws-cli-tools.git
cd aws-cli-tools
./run setup
cp .aws/credentials.example .aws/credentials
vi aws/credentials  # replace XXX with your credentials and save
```

## Usage

Using the `run` script, all commands are run inside a Docker container, which has the AWS CLI tools installed.

```
./run                     # Get a list of available commands
./run <command> [params]  # Run a specific command/tool script
./run exec <bash command> # Run arbitrary command line inside a container
./run bash                # Run bash inside container for interactive use
```

## Examples

#### Dump your entire Route53 Hosted Zone Configuration
Useful for backups, and other export operations.

```
./run route53:dump-zone <hosted-zone-id>
```
