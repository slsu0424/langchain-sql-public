## langchain-sql-private
Query a Azure SQL Database using natural language.

Blog Post: https://slsu0424.github.io/interact-critical-care-data-using-natural-language/

## Environment
- Database: Azure SQL 12.0.2000.8
- Database Driver: ODBC driver 18 for SQL Server
- Python: 3.11.6
- OS: MacOS 12.7.1
- VS Code: 1.84.1

## Setup
This project can be run in a virtual environment or local machine.

To install required packages, navigate to the project directory and run:

```shell
$ pip3 install -r requirements.txt
```

To install unixODBC, run:
```shell
$ brew install unixodbc
```

To install Microsoft ODBC Driver on MacOS, run:
```shell
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
$ brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
$ brew update
$ HOMEBREW_ACCEPT_EULA=Y brew install msodbcsql18 mssql-tools18
```

## Running
`ADMISSIONS.csv`: Load into Azure SQL Database

`langchain-sql.ipynb`: Run after data is loaded

`queries-mimic.sql`: SQL statements to query Azure SQL Database

`queries-mimic.ipynb`: Compare results from natural language prompts vs. SQL statements

## Known issues
As mentioned in the blog post, there are known issues with the ODBC Driver on MacOS.  Be sure to follow this [guide](https://learn.microsoft.com/en-us/sql/connect/odbc/linux-mac/known-issues-in-this-version-of-the-driver?view=sql-server-ver16) if errors are encountered.

If needed, make the following changes via Terminal:

```shell
$ brew install openssl@1.1
$ rm -rf $(brew --prefix)/opt/openssl version=$(ls $(brew --prefix)/Cellar/openssl@1.1 | grep "1.1")
$ ln -s $(brew --prefix)/Cellar/openssl@1.1/$version $(brew --prefix)/opt/openssl
```