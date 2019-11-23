package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class AdditionalManuals extends GenericInputPage {
    private PageElements elements;

    public AdditionalManuals(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void applyToBenefitPlans(HashMap<String, String> hmap) {
        if (hmap.containsKey("Benefit Plan")) {
            String[] plans = hmap.get("Benefit Plan").split("//");
            for (String plan : plans) {
                 click("Additional Manuals Benefit Plans", selectAdditionalManuals(plan));
                pause(1);
            }
        }
         clickNext();
         waitForPageLoad();
    }

    public void additionalManualsMGA(HashMap<String, String> hmap) {
         click("Additional Manuals in MGA", selectAdditionalManuals(hmap.get("Additional Manuals in MGA")));
         clickNext();
         waitForPageLoad();
    }

    public WebElement selectAdditionalManuals(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }


    private static class PageElements extends AbstractPageElements {

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
