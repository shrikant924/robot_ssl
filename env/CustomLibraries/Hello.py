from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import library, keyword


@library
class Hello:

    # def __init__(self):
    #     self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")
    #     self.bLib = BuiltIn().get_library_instance("BuiltIn")

    @property
    def selLib(self):
        return BuiltIn().get_library_instance("SeleniumLibrary")

    @property
    def bLib(self):
        return BuiltIn().get_library_instance("BuiltIn")

    @keyword
    def hello_world(self):
        print("Hellow world")

    @keyword
    def tap_on_link(self, locator):
        # self.sellib.click_button(locator)
        element = self.selLib.find_element(locator)
        element.click()

    @keyword
    def tap_on_link2(self, locator):
        # self.sellib.click_button(locator)
        element = self.selLib.find_element(locator)
        element.click()

    @keyword
    def tap_on_me(self, locator):
        self.selLib.click_link(locator)
        # self.bLib.log_to_console("I am shrikant")

    @keyword
    def add_product_by_name(self, productList):
        i = 1
        plist = self.selLib.find_elements("class:inventory_item_name")
        for productTitle in plist:
            print(productTitle.text)
            if productTitle.text in productList:
                self.selLib.click_button("xpath:(//*[normalize-space(text()) = 'Add to cart'])[" + str(i) + "]")
                # self.bLib.log_to_console("I am shrikant")
            i = i + 1

    @keyword
    def verify_total_of_price(self, locator):
        i = 1
        price1 = 0.00
        price3 = 0.00
        priceList = self.selLib.find_elements(locator)
        for price in priceList:
            txt = price.text
            price1 = txt[1:]
            price2 = float(price1)
            price3 = price3 + price2

        self.bLib.log_to_console(str(price3))
