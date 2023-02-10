from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import library, keyword

class cs:
    def __init__( self ) :
        self.sel =  BuiltIn().get_library_instance('SeleniumLibrary')
    
    @keyword
    def tap_on_me(self , locator):
        self.sel.click_link(locator)
    
    # @keyword
    # def tap_on_link(self, locator: str):
    #     # self.sellib.click_button(locator)
    #     element =  self.selLib.find_element(locator)
    #     element.click()
    #
    # @keyword
    # def tap_on_link(self, locator: str):
    #     # self.sellib.click_button(locator)
    #     element =  self.selLib.find_element(locator)
    #     element.click()