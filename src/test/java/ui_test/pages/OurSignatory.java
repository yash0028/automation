package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class OurSignatory extends GenericInputPage {
    private PageElements elements;

    public OurSignatory(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void ourSignatoryDate(HashMap<String, String> hmap) {
        String date;
        if (hmap.get("Our Signatory Date").equals("today")) {
            date = CommonMethods.todaysDate();
        } else {
            date = CommonMethods.formatDate(hmap.get("Our Signatory Date"));
        }
         sendKeys("Provider Signatory Date", this.elements.signatoryDate, date);
         clickNext();
         waitForPageLoad();
    }


    public void ourSignatorytitle(HashMap<String, String> hmap) {
        String date;
        if (hmap.get("Our Signatory Date").equals("today")) {
            date = CommonMethods.todaysDate();
        } else {
            date = CommonMethods.formatDate(hmap.get("Our Signatory Date"));
        }
         sendKeys("our Signatory title", this.elements.oursignatoryname, hmap.get("Provider our Signatory title"));
         sendKeys("Provider Signatory Date", this.elements.signatoryDate, date);
         clickNext();
         waitForPageLoad();


    }


    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[contains(@id,'OurSignatoryDate')]")
        private WebElement signatoryDate;
        @FindBy(xpath = "//div[@class=\"AnswerAboveAndBelow interview-item__answer\"]/span/div/input")
        private WebElement oursignatoryname;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
//div[@class="AnswerAboveAndBelow interview-item__answer"]/span/div/input