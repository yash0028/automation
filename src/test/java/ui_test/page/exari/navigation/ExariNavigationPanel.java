package ui_test.page.exari.navigation;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.home.site.SiteManager;
import ui_test.page.exari.home.site.subpages.*;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class ExariNavigationPanel implements IWebInteract, IFactoryPage {
    private static final Logger log = LoggerFactory.getLogger(ExariNavigationPanel.class);

    private final WebDriver driver;
    private final PageElements elements;

    /*
    CONSTRUCTOR
     */

    public ExariNavigationPanel(WebDriver driver) {
        this.driver = driver;
        this.elements = new PageElements(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.headerTabSite);
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    PAGE ACTION METHODS
     */

    public TestSitePage setSiteEnvironment2Test() {
        click("site tab", elements.headerTabSite);
        click("test site", elements.headerTabSiteOptionTest);
        return getSiteManager().getTestSitePage();
    }

    public NortheastUHNSitePage setSiteEnvironment2NortheastUHN() {
        int count =0;
        while(count<=10){
            click("site tab", elements.headerTabSite);
            if(click("northeast uhn", elements.headerTabSiteOptionNortheastUHN)){
                break;
            }
            pause(2);
            count++;
        }
        return getSiteManager().getNortheastUHNSitePage();
    }

    public CentralUHNSitePage setSiteEnvironment2CentralUHN() {
        int count =0;
        while(count<=10){
            click("site tab", elements.headerTabSite);
            if(click("central uhn", elements.headerTabSiteOptionCentralUHN)){
                break;
            }
            pause(2);
            count++;
        }
        return getSiteManager().getCentralUHNSitePage();
    }

    public WestUHNSitePage setSiteEnvironment2WestUHN() {
        int count =0;
        while(count<=10){
            click("site tab", elements.headerTabSite);
            if(click("central uhn", elements.headerTabSiteOptionWestUHN)){
                break;
            }
            pause(2);
            count++;
        }

        return getSiteManager().getWestUHNSitePage();
    }

    public SouthEastUHNSitePage setSiteEnvironment2SouthEastUHN() {
        int count =0;
        while(count<=10){
            click("site tab", elements.headerTabSite);
            if(click("central uhn", elements.headerTabSiteOptionSouthEastUHN)){
                break;
            }
            pause(2);
            count++;
        }

        return getSiteManager().getSouthEastUHNSitePage();
    }

    public NationalUHNSitePage setSiteEnvironment2NationalUHN() {
        int count =0;
        while(count<=10){
            click("site tab", elements.headerTabSite);
            if(click("central uhn", elements.headerTabSiteOptionNationalUHN)){
                break;
            }
            pause(2);
            count++;
        }

        return getSiteManager().getNationalUHNSitePage();
    }

    public GenericSitePage setSiteEnvironment(SiteManager.Site site) {
        switch (site) {
            case CENTRAL:
                return setSiteEnvironment2CentralUHN();
            case NORTHEAST:
                return setSiteEnvironment2NortheastUHN();
            case SOUTHEAST:
                return setSiteEnvironment2SouthEastUHN();
            case WEST:
                return setSiteEnvironment2WestUHN();
            case NATIONAL:
                return setSiteEnvironment2NationalUHN();
            default:
                return setSiteEnvironment2Test();
        }
    }

    public GenericSitePage setSiteEnvironment(String site) {
        GenericSitePage sitePage = setSiteEnvironment(SiteManager.Site.string2Site(site));
        sitePage.setSite(site);
        return sitePage;
    }

    /*
    PAGE METHODS
     */

    public SiteManager getSiteManager() {
        return new SiteManager(driver);
    }

    /*
    ELEMENT CLASS
     */

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    private class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//span[text()='Sites']")
        private WebElement headerTabSite;

        @FindBy(xpath = "//a[@title='Test']")
        private WebElement headerTabSiteOptionTest;

        @FindBy(xpath = "//a[contains(@title,'Northeast UHN')]")
        private WebElement headerTabSiteOptionNortheastUHN;

        @FindBy(xpath = "//a[@title='Central UHN']")
        private WebElement headerTabSiteOptionCentralUHN;

        @FindBy(xpath = "//a[@title='West UHN']")
        private WebElement headerTabSiteOptionWestUHN;

        @FindBy(xpath = "//a[@title='Southeast UHN']")
        private WebElement headerTabSiteOptionSouthEastUHN;

        @FindBy(xpath = "//a[@title='National']")
        private WebElement headerTabSiteOptionNationalUHN;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
