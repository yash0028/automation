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
import java.util.List;

public class Appendix2 extends GenericInputPage {
    private PageElements elements;
    private String Question;

    public Appendix2(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void selectAppendix(HashMap<String, String> hmap) throws InterruptedException {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Question = "Is this contract only for Virginia MLTSS";
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getContractType(Question)))) {
            IWebInteract.log.info("Question : {}", Question);
            Assert.assertTrue(click(Question + ": No", getContractTypeElem(Question, "No")));
            waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        }

        String[] Questions = {"Which Appendix 2 will be used for this contract",
                "Choose the following Appendix 2",
                "Select the appropriate Appendix 2",
                "Kansas and/or Missouri Medicaid and/or CHIP ONLY",
                "Which Appendix 2 do you need?"};

        for (String Question : Questions) {
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(getContractType(Question)))) {
                IWebInteract.log.info("Question : {}", Question);
                Assert.assertTrue(click(Question + ":" + hmap.get("Appendix2"), getContractTypeElem(Question, hmap.get("Appendix2"))));
                waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
            }
        }

        //Split Products using // in case need to include/ exclude multiple products

        includeMedicareProduct(hmap, false);
        Question = "products will be excluded";
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getContractType(Question)))) {
            IWebInteract.log.info("Question : {}", Question);
            if (hmap.containsKey("Exclude Product")) {
                String[] ExcludeProducts = hmap.get("Exclude Product").split("//");
                for (String product : ExcludeProducts) {
                    Assert.assertTrue(click("Exclude Product in Appendix 2", getXPath(product)));
                    Assert.assertTrue(waitForPageLoad(60));
                }
            }
        } else {
            IWebInteract.log.info("[NOT FOUND] Question : {}", Question);
        }

        Question = "products will be included";
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getContractType(Question)))) {
            IWebInteract.log.info("Question : {}", Question);
            if (hmap.containsKey("Include Product")) {
                String[] IncludeProducts = hmap.get("Include Product").split("//");
                for (String product : IncludeProducts) {
                    Assert.assertTrue(click("Include Product in Appendix 2 : " + product, getContractTypeElem(Question, product)));
                    Assert.assertTrue(waitForPageLoad(60));
                }
            }
        } else {
            IWebInteract.log.info("[NOT FOUND] Question : {}", Question);
        }

        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

        //in some cases include medicare product will be displayed in the next page
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        includeMedicareProduct(hmap, true);

    }

    public void includeMedicareProduct(HashMap<String, String> hmap, boolean clickNext) {
        Question = "Medicare Advantage";
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getContractType(Question)))) {
            IWebInteract.log.info("Question : {} = {}", Question, hmap.get("Include Medicare Product"));
            if (hmap.containsKey("Include Medicare Product")) {
                String[] IncludeProducts = hmap.get("Include Medicare Product").split("//");
                for (String product : IncludeProducts) {
                    Assert.assertTrue(click("Include Medicare Product : " + product, getContractTypeElem(Question, product)));
                    waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
                    Assert.assertTrue(waitForPageLoad(60));
                }

            }
            if (clickNext) {
                Assert.assertTrue(clickNext());
                Assert.assertTrue(waitForPageLoad());
            }
        } else {
            IWebInteract.log.info("[NOT FOUND] Question : {}", Question);
        }
    }

    public void includeMedicareProductAmendment(HashMap<String, String> hmap, boolean clickNext) {
        Question = "Medicare Advantage";
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getContractType(Question)))) {
            IWebInteract.log.info("Question : {} = {}", Question, hmap.get("Include Medicare Product Amendment FC"));
            if (hmap.containsKey("Include Medicare Product Amendment FC")) {
                String[] IncludeProducts = hmap.get("Include Medicare Product Amendment FC").split("//");
                for (String product : IncludeProducts) {
                    Assert.assertTrue(click("Include Medicare Product : " + product, getContractTypeElem(Question, product)));
                    waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
                    Assert.assertTrue(waitForPageLoad(60));
                }

            }
            if (clickNext) {
                Assert.assertTrue(clickNext());
                Assert.assertTrue(waitForPageLoad());
            }
        } else {
            IWebInteract.log.info("[NOT FOUND] Question : {}", Question);
        }
    }

    public void productsExcludedFromAgreement(HashMap<String, String> hmap) {
        if (hmap.containsKey("Exclude Product in Amendment FC")) {
            Assert.assertTrue(click("Exclude Product in Appendix 2", getXPath(hmap.get("Exclude Product in Amendment FC"))));
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }


    public void SelectAppedix1(String option) {
        waitForPageLoad();
        if (getDriver().findElement(By.xpath("//label[@class='QuestionText']/b")).isDisplayed()) {
            click("Will additional manuals apply?", getXPath(option));
            Assert.assertTrue(clickNext());
            waitForPageLoad();
        }
    }

    public void includeAdditionalManualsAppendix1() {
        waitForPageLoad();
        if (getDriver().findElement(By.xpath("//label[@class='QuestionText']/b")).isDisplayed()) {
            click("Which additional manual is included?", getXPath("Florida"));
            Assert.assertTrue(clickNext());
            waitForPageLoad();
        }
    }

    public void enterAppendix2FC(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        String[] Questions = {"Which Appendix 2 will be used for this contract",
                "Choose the following Appendix 2",
                "Select the appropriate Appendix 2",
                "Kansas and/or Missouri Medicaid and/or CHIP ONLY",
                "Which Appendix 2 do you need?"};

        for (String Question : Questions) {
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(getContractType(Question)))) {
                IWebInteract.log.info("Question : {}", Question);
                Assert.assertTrue(click(Question + ":" + hmap.get("Appendix2 Amendment FC"), getContractTypeElem(Question, hmap.get("Appendix2 Amendment FC"))));
                waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
            }
        }
        Question = "products will be excluded";
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getQn(Question)))) {
            IWebInteract.log.info("Question: {}", Question);
            if (hmap.containsKey("Exclude Product in Amendment FC")) {
                String[] products = hmap.get("Exclude Product in Amendment FC").split("//");
                for (String product : products) {
                    if (CommonMethods.isElementPresent(getDriver(), By.xpath(getExcludeProductXpath(Question, product)))) {
                        if (getExcludeProductElem(Question, product).getAttribute("type").equals("radio")) {
                            Assert.assertTrue(click("Exclude Product in Appendix 2", getExcludeProductElem(Question, product)));
                        } else if (getExcludeProductElem(Question, product).getAttribute("type").equals("checkbox")) {
                            Assert.assertTrue(setCheckBox("Exclude Product in Appendix 2", getExcludeProductElem(Question, product), true));
                        }
                        pause(1);
                    }
                }
            }
        }
        Question = "products will be included";
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getContractType(Question)))) {
            IWebInteract.log.info("Question : {}", Question);
            if (hmap.containsKey("Include Product Amendment FC")) {
                String[] IncludeProducts = hmap.get("Include Product Amendment FC").split("//");
                for (String product : IncludeProducts) {
                    Assert.assertTrue(click("Include Product in Appendix 2 : " + product, getContractTypeElem(Question, product)));
                    Assert.assertTrue(waitForPageLoad(60));
                }
            }
        } else {
            IWebInteract.log.info("[NOT FOUND] Question : {}", Question);
        }
        includeMedicareProductAmendment(hmap, false);
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
        //sometimes we will get the above two questions in 2 different pages
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        includeMedicareProductAmendment(hmap, true);
        //if Appendix 2 have second page (MGA VA 53) (PAT VA 22)
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.topic))) {
            waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
        //if Provider Details is getting after Appendix 2 (Florida)
        if(hmap.get("Select the State this Market Number applies to").equals("Florida")) {
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.providerDetailstopic))) {
                waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
                //Select the Territory this Market Number applies to.
                Question = "Select the Territory this Market Number applies to";
                if(CommonMethods.isElementPresent(getDriver(),By.xpath(getQn(Question)))){
                    Assert.assertTrue(click(Question,getQnInputElem(Question,hmap.get("Select the State this Market Number applies to"))));
                    waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
                    Assert.assertTrue(clickNext());
                    Assert.assertTrue(waitForPageLoad());
                }
            }
        }

    }

    public String getQn(String question) {
        return "//label/b[contains(.,'" + question + "')]";
    }
    public WebElement getQnInputElem(String ques, String val) {
        if (val != null) {
            return findElement(getDriver(), new String[]{"xpath", getQn(ques) + "/../../../..//input[contains(@value,'" + val + "')]"});
        }
        return findElement(getDriver(), new String[]{"xpath", getQn(ques) + "/../../../..//input"});
    }

    public WebElement paymentAppendixElement(String paymentAppendix) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value,'" + paymentAppendix + "')]"});
    }

    public WebElement getXPath(String answer) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + answer + "')]"});
    }

    public String getContractType(String question) {
        return "//label/b[contains(.,'" + question + "')]";
    }

    public WebElement getContractTypeElem(String question, String MarketType) {
        return findElement(getDriver(), new String[]{"xpath", "//label/b[contains(.,'" + question + "')]/../../../..//input[contains(@value,'" + MarketType + "')]"});
    }

    public String getExcludeProductXpath(String Question, String Value) {
        return "//label/b[contains(.,'" + Question + "')]/../../../..//input[contains(@value,'" + Value + "')]";
    }

    public WebElement getExcludeProductElem(String Question, String Value) {
        return findElement(getDriver(), new String[]{"xpath", "//label/b[contains(.,'" + Question + "')]/../../../..//input[contains(@value,'" + Value + "')]"});
    }

    public void enterLouisiana(HashMap<String, String> hmap) {
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.LouisianaXpath))) {
            click(elements.Louisiana);
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
    }


    private static class PageElements extends AbstractPageElements {

        private String message = "//div[contains(@class,'DialogBox')]";
        private String topic = "//div[contains(@class,'topicArea')]/p[contains(.,'Appendix 2')]";
        private String providerDetailstopic = "//div[contains(@class,'topicArea')]/p[contains(.,'Provider Details')]";
        private String LouisianaXpath = "//input[contains(@value,'Louisiana Medicaid and CHIP Only or Missisippi Medicaid and/or CHIP Red Door Only')]";

        public PageElements(SearchContext context) {
            super(context);
        }

        @FindBy(xpath = "//input[contains(@value,'Louisiana Medicaid and CHIP Only or Missisippi Medicaid and/or CHIP Red Door Only')]")
        private WebElement Louisiana;

        @FindBy(xpath = "//input[contains(@value,'Alabama Only')]")
        private WebElement Alabama;

    }

}
