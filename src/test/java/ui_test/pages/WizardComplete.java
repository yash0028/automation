package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;

import java.util.HashMap;

public class WizardComplete extends GenericInputPage {
    private PageElements elements;

    public WizardComplete(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void completeWizard(HashMap<String, String> hmap) {
        waitTillClickable(elements.completeWizardElement, 10);
        //dont remove this pause
        pauseSilent(1);
        try {
            this.elements.completeWizardElement.click();
            IWebInteract.log.info("clicked on next button");
        } catch (Exception e) {
            int count = 1;
            boolean wizardComplete = true;
            IWebInteract.log.info("Complete Wizard process is taking long time than expected.");
            try {
                while (CommonMethods.isElementPresent(getDriver(), By.xpath(this.elements.wizardCompleteXpath))) {
                    if (count > 1000) {
                        wizardComplete = false;
                        break;
                    }
                    pauseSilent(1);
                    count++;
                }
            } catch (org.openqa.selenium.UnsupportedCommandException e1) {
                IWebInteract.log.info("Waited for : {} Second", count);
                e1.printStackTrace();
                Assert.fail("[Session Timeout] Unable to complete wizard processing.");
            }
            IWebInteract.log.info("Waited for : {} Second", count);
            Assert.assertTrue("Unable to complete wizard processing.", wizardComplete);
        }
        waitForPageLoad(30);
        confirmDashboard();
        IWebInteract.log.info("Contract Link : {}", getDriver().getCurrentUrl());
        hmap.put("Contract Link",getDriver().getCurrentUrl());
    }

    public void confirmDashboard() {
        boolean dasboard = false;
        for (int count = 0; count <= 2; count++) {
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.getheaderTabHome))) {
                waitTillVisible(elements.headerTabHome);
                if (isVisible(elements.headerTabHome)) {
                    highlight(elements.headerTabHome);
                }
                dasboard = true;
                break;
            } else {
                IWebInteract.log.info("Retrying for Dashboard. Retry : {}", count + 1);
                refreshPage();
                pause(3);
            }
        }
        Assert.assertTrue("Unable to load Dashboard.", dasboard);
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//a[contains(@class,'nextButtonLink')]")
        private WebElement completeWizardElement;
        @FindBy(xpath = "//div[@title='Home']")
        public WebElement headerTabHome;
        @FindBy(xpath = "//h2[contains(.,'Wizard Complete')]")
        public WebElement wizardCompleteElem;

        private String wizardCompleteXpath = "//h2[contains(.,'Wizard Complete')]";
        private String getheaderTabHome = "//div[@title='Home']";

        public PageElements(SearchContext context) {
            super(context);
        }

    }

}