package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PESResponsePage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(PESInputPage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(text(),'PES Response')]")
    private WebElement labelPESResponse;

    @FindBy(xpath = "//b[contains(text(),'Select the Counterparty')]")
    private WebElement labelCounterParty;

    @FindBy(xpath = "//input[@type='radio']/preceding::span/input")
    private WebElement radioCounterPartyOption1;

    @FindBy(xpath = "(.//input[@type='radio'])[2]")
    private WebElement radioCounterPartyOption2;

    /*
    CONSTRUCTOR
     */

    public PESResponsePage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelPESResponse);
    }

    /*
    CLASS METHODS
     */

    public boolean selectCounterPartyOption1() {
        return isVisible(radioCounterPartyOption1) && click("first option", radioCounterPartyOption1);
    }

    public boolean selectCounterPartyOption2() {
        return isVisible(radioCounterPartyOption2) && click("second option", radioCounterPartyOption2);
    }

}
