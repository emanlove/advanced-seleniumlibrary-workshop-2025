import time

from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn
from selenium.webdriver.support.events import AbstractEventListener


class ClickListener(AbstractEventListener):
    def before_click(self, element, driver):
        logger.info("Before click ...")
        driver.execute_script("arguments[0].setAttribute(arguments[1], arguments[2])",
                              element,
                              "style",
                              "outline-style: solid; outline-color: yellow; outline-width: 12px;")
        # time.sleep(0.05)

    def after_click(self, element, driver):
        # time.sleep(0.05)
        driver.execute_script("arguments[0].setAttribute(arguments[1], arguments[2])",
                              element,
                              "style",
                              "outline-style: none;")
        logger.info("After click ...")
