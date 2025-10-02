# STX Payroll Smart Contract

This repository contains the source code for the **STX Payroll** smart contract, designed to automate payroll management using blockchain technology.

## Features

- Automated payroll processing
- Secure and transparent transactions
- Easy integration with existing systems
- Written in Clarity for the Stacks blockchain

## Getting Started

### Prerequisites

- [Stacks CLI](https://docs.stacks.co/docs/cli/)
- Node.js (for testing and scripts)
- Git

### Installation

Clone the repository:

```sh
git clone https://github.com/your-username/stx-payroll.git
cd stx-payroll
```

### Usage

1. Review and modify the smart contract code as needed.
2. Deploy the contract using Stacks CLI:

   ```sh
   stacks-cli contract deploy path/to/contract.clar
   ```

3. Run tests:

   ```sh
   npm install
   npm test
   ```

## Project Structure

- `contracts/` — Clarity smart contract source files
- `tests/` — Unit and integration tests
- `vitest.config.js` — Test configuration
- `.gitattributes` — Git attributes for linguist and line endings

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
