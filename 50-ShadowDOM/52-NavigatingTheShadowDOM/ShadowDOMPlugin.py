from robot.api import logger

from selenium.common.exceptions import NoSuchShadowRootException

from SeleniumLibrary.errors import ElementNotFound
from SeleniumLibrary.base import LibraryComponent, keyword
from SeleniumLibrary.locators import ElementFinder


class ShadowDOMFinder(ElementFinder):

    def _find(self, locator, tag=None, first_only=True, required=True, parent=None):
        logger.info('Using ShadowDOM enabled finder')
        parent_is_shadowdom_host = False
        element_type = "Element" if not tag else tag.capitalize()
        if parent and not self._is_webelement(parent):
            raise ValueError(
                f"Parent must be Selenium WebElement but it was {type(parent)}."
            )
        if self._is_webelement(locator):
            return locator
        try:
            if parent:
                parent_is_shadowdom_host = parent.shadow_root
        except NoSuchShadowRootException:
            pass
        if parent_is_shadowdom_host:
            parent = parent_is_shadowdom_host
        prefix, criteria = self._parse_locator(locator)
        strategy = self._strategies[prefix]
        tag, constraints = self._get_tag_and_constraints(tag)
        elements = strategy(criteria, tag, constraints, parent=parent or self.driver)
        if required and not elements:
            raise ElementNotFound(f"{element_type} with locator '{locator}' not found.")
        if first_only:
            if not elements:
                return None
            return elements[0]
        return elements


class ShadowDOMPlugin(LibraryComponent):

    def __init__(self, ctx):
        LibraryComponent.__init__(self, ctx)
        ctx._original_element_finder = ElementFinder(ctx)
        self.element_finder = ShadowDOMFinder(ctx)
