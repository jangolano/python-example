## Sample Python Project
This is a sample python project that that demmonstrates simple project structure, unit testing and deploying infrastructure.  

### Project Structure
    .
    ├── infrastructure             # Infrastructure as code
    ├── source                     # Source files for the project
    ├── tests                      # Unit tests
    ├── requirements.txt           # Dependencies to install
    └── readme.md                  # This readme


### The Python Virtual Environment
The Python virtual environment is used to isolate dependencies from any 
other Python project.

The Python interpetor and depencies are installed with this directory.   

In order to create the environment run the following in a terminal: 
``` make  create-evn ```

The .venv directory will be created and any depencies within the requirements.txt file will be installed.

### Running the Tests
This project makes use of pytest and pytest-cov to run tests and produce a coverage report.

In order to execute the tests, run the following in a terminal:
``` make run-tests```
