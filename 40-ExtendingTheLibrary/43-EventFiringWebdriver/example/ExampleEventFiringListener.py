from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn
from selenium.webdriver.support.events import AbstractEventListener


class ExampleEventFiringListener(AbstractEventListener):
    def before_navigate_to(self, url, driver):
        logger.info("Before navigate to %s" % url)
        sl = BuiltIn().get_library_instance("SeleniumLibrary")
        if sl.driver:
            logger.info("Got driver also from SeleniumLibrary.")

    def after_navigate_to(self, url, driver):
        logger.info("After navigate to %s" % url)
