package ui_test.page.cmd.transaction;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class ActionRequiredTransactionPage extends SumTransactionTable.B implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(ActionRequiredTransactionPage.class);

    private PageElements elements;

    /*
    CONSTRUCTOR
    */

    public ActionRequiredTransactionPage(WebDriver driver) {
        super(driver);
        this.elements = new PageElements(driver);

    }
    
    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return true && super.confirmCurrentPage();
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }
    
    /*
    PAGE ACTION METHODS
     */
    
    /*
    CLASS METHODS
    */
    
    /*
    PAGE METHODS
     */
    
    /*
    HELPER METHODS
    */
    
    /*
    ELEMENT CLASS
     */

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    private class PageElements extends AbstractPageElements {

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
