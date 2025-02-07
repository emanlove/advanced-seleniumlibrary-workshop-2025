### Introduction to Advanced SeleniumLibray Workshop

#### Purpose:
Give an overview of the workshop and verify everyone's system setup

#### Learning Objectives:

- Trainees will see the structure of each exercise
- Trainees will have basic system setup and verified

#### Setup your system:

Install Chrome/Chromium, chromedriver, Firefox, geckodriver and
[uv](https://docs.astral.sh/uv/getting-started/installation/) and run `uv sync`.
It will install Python, create a virtual environment and install all the dependencies.

#### Verification of setup:

Validate your setup by running `uv run robot 0A_Introduction/SetupTest.robot`.

To check the individual components:

```commandline
python --version
chrome --version
chromedriver --version
robot --version
pip list
```

#### Resources:
