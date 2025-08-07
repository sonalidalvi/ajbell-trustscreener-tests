# AJBell Test Automation Project

This repository contains automated tests and resources for AJBell using Robot Framework and Playwright.

## Project Structure

- `tests/` - Contains Robot Framework test suites (e.g., `open_isa_test.robot`).
- `resources/` - Shared keywords and resource files (e.g., `isa_keywords.robot`).
- `variables/` - Common variables for tests (e.g., `common_variables.robot`).
- `output/` - Test execution reports, logs, screenshots, and traces.
    - `log.html`, `report.html`, `output.xml` - Main Robot Framework output files.
    - `browser/screenshot/` - Screenshots from browser tests.
    - `browser/traces/` - Playwright trace files.
- `requirements.txt` - Python dependencies for running tests.
- `README.md` - Project documentation.

## Prerequisites

- Python 3.7+
- Robot Framework
- Playwright
- robotframework-browser

Install dependencies:
```powershell
pip install -r requirements.txt
```

## Running Tests

To execute the test suite:
```powershell
robot tests/open_isa_test.robot
py -m robot -d output tests/open_isa_test.robot
```

Test results will be available in the `output/` directory.

## Screenshots & Traces

Screenshots and browser traces are saved in `output/browser/screenshot/` and `output/browser/traces/` respectively for debugging and analysis.

## Contributing

Feel free to submit issues or pull requests for improvements.

## License

This project is licensed under the MIT License.
