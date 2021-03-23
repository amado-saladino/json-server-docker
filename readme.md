# Overview

JSON server containerized for testing purpose.

## Data Source

All data reside in `users.json` but the file could be renamed, and the structure could be changed. What it matters here is how the data inside the data file is organized, it is recommended to have an array-based structure for automatically creating the corresponding routes.

> **Note**: Data modifications done upon CRUD operations will be saved in the data source file.

### Example

`users.json` has an array `users` the data will be available via http://server-ip/users

## Configuration

`json-server.json` has the conguration required for the server to work, the port could be changed to any other port of your choice, but in this case, the exposed port for the container should match the newly selected port. It listens on port 80 by default.

```json
{
  "port": 80,
  "host": "0.0.0.0"
}
```

## Start The Server

`bash ./run-container.sh`

> **Note**: The container will be passed `users.json` as a data source, in case you need to rename this file, modfiy the bash script and replace `users.json` with your file name.

> **Note**: The default file name for the data source is `db.json` but here, it has been overriden with `users.json`, you can create `db.json` file instead and remove `users.json` from the command used inside the bash script.
