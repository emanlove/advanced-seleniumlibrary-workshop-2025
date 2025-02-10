## Advanced SeleniumLibrary Workshop - RoboCon2025

This workshop goes over topics that help take one from an introductory and basic level
to more advanced topics.

### Syllabus

- 00-Introduction
- 10-BrowserDriverConfiguration
  * 11-SpecifyTestBrowserVersion
  * 12-SeleniumManager
  * 13-ConfigureDriverUsingService
  * 14-DebuggingBrowserDriverWithLogs
  * 15-ConfigureBrowserWithOptions
  * 16-AdvancedOptionConfiguration
- 20-DocumentationAsResource
  * 21-NavigatingDocumentation
- 30-Javascript
  * 31-ExecuteJavascript
  * 32-ExecuteJavascriptAsFile
  * 33-JavascriptWithArguments
  * 34-AsyncJavascript
- 40-ExtendingTheLibrary
  * 41-GetLibraryInstance
  * 42-PlugInAPI
  * 43-EventFiringWebdriver
- 50-ShadowDOM
  * 51-WhatIsShadowDOM
  * 52-NavigatingTheShadowDOM
- 60-TimingIssues-WaitingStrategy
  * 61-WaitUntilKeywords
  * 62-PageLoadStrategies
  * 63-WaitForExpectedCondition
  * 64-WaitForCondition
  * 65-ImplicitWaitMethods
  * 66-DebuggingTimingIssues
- 70-WebDriverBiDi
- 80-Translations

#### Additional topics that we might cover

- 90-MoreDebbugging
  * 92-DebuggingExample
- 100-SeleniumPeculiarities
  * 01-ClickAndScroll
  * 02-InputText-vs-PressKey-s

### Setup Instructions
Install Chrome/Chromium, chromedriver, Firefox, geckodriver and
[uv](https://docs.astral.sh/uv/getting-started/installation/) and run `uv sync`.
It will install Python, create a virtual environment and install all the dependencies.
Validate your setup by running `uv run robot 00-Introduction/SetupTest.robot`.

### About these exercises

The exercises are our guide through the topics. They are separated in into major categories (i.e. the 30s cover Javascript)
with individual topics or "exercises" within. Each exercise has a README which states the purpose and learning objectives
for that particular exercise.

### About the Instructors

_Lassi Heikkinen_ has contributed to the SeleniumLibrary and has been a long term Robot Framework user.

_Yuri Verweij_ is a seasoned test automation engineer with extensive experience in test automation.
A passionate advocate for the Robot Framework, he actively contributes to the community by helping
maintain SeleniumLibrary and co-organizing MeetUps in the Netherlands. Yuri is committed to advancing
the use of Robot Framework through sharing knowledge and working together.

_Ed Manlove_ is a co-maintainer of the SeleniumLibrary and is actively working to build and support
the Robot Framework community.
