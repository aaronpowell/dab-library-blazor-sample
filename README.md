# Blazor Library demo

This is a sample Blazor WASM application that uses the [Data API builder for Azure Databases (DAB)](https://aka.ms/dab) for the backend (over an Azure SQL instance).

## Running the demo

To run this sample you'll need to first provision an Azure SQL or MSSQL server instance and execute the database setup scripts (see [./Database/readme.md](./Database/readme.md) for details).

Once the database is ready you'll need to install the .NET tools:

```bash
dotnet tool restore
```

Next, you'll need to configure an environment variable, named **MSSQL**, with the connection string to the database and then launch the DAB CLI:

```bash
dotnet dab start
```

Lastly, open the solution in Visual Studio and run the application.

## Notes

In this sample DAB has been configured without any authentication or authorisation on the database entities, so the application is not secure. This is only for demo purposes, in a real application you should always secure your database entities (see [the docs](https://github.com/Azure/data-api-builder/blob/main/docs/authorization.md)).
