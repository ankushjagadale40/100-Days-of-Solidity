To import code from an external file, we use the import statement followed by the path to the file we want to import. Solidity supports two types of import paths:

1.Importing local files: To import Solidity files that exist within our project directory, we can use either a relative or an absolute path. For example:

import “./utils/StringUtils.sol”;

import “../contracts/Token.sol”;

2.Importing external packages: Solidity also allows us to import code from external packages or libraries, typically installed via package managers like npm or imported from popular Solidity package repositories. The import path in such cases usually includes the package name, followed by the file path. Here’s an example:

import “openzeppelin/contracts/token/ERC20/ERC20.sol”;
