package ui_test.page.cmd.transaction.action.row;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;

public class ActionRow implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(ActionRow.class);

    private final WebDriver driver;
    private RowElements rowElements;
    private DetailElements detailElements;
    private ListProductRow rows;

    /*
    CONSTRUCTOR
    */

    public ActionRow(WebDriver driver, WebElement elementRow, WebElement detailRow) {
        this.driver = driver;
        this.rowElements = new RowElements(elementRow);
        this.detailElements = new DetailElements(detailRow);
//        this.rows = new ListProductRow(driver, detailElements.row_all);
        log.trace("action row created");
    }
    
    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        log.info("action size {}", this.detailElements.row_all.size());
        return true;
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }
    
    /*
    PAGE ACTION METHODS
     */

    public ActionRow expandDetails() {
        click("exapnd", rowElements.button_expand);
        return this;
    }
    
    /*
    CLASS METHODS
    */

    public String getState() {
        return rowElements.label_state.getText().trim();
    }

    public String getMarket() {
        return rowElements.label_market.getText().trim();
    }

    public String getContractDetails() {
        return rowElements.label_details.getText().trim();
    }

    public String getStatus() {
        return rowElements.button_status.getText().trim();
    }

    public String getRequestType() {
        return rowElements.label_requestType.getText().trim();
    }

    public String getDate() {
        return rowElements.label_date.getText().trim();
    }

    public ProductRow getRow(int index) {
        return this.rows.get(index);
    }

    @Override
    public String toString() {
        return getState() + " ----- " + getDate();
    }

    /*
    PAGE METHODS
     */
    
    /*
    HELPER METHODS
    */
    
    /*
    ELEMENT CLASS
     */

    private class RowElements extends AbstractPageElements {

        @FindBy(xpath = ".//span[text()='+']")
        public WebElement button_expand;

        @FindBy(xpath = ".//td[contains(@class,'State')]")
        public WebElement label_state;

        @FindBy(xpath = ".//td[contains(@class,'Market')]")
        public WebElement label_market;

        @FindBy(xpath = ".//td[contains(@class,'ContractDetails')]")
        public WebElement label_details;

        @FindBy(xpath = ".//td[contains(@class,'Status')]/span")
        public WebElement button_status;

        @FindBy(xpath = ".//td[contains(@class,'RequestType')]")
        public WebElement label_requestType;

        @FindBy(xpath = ".//td[contains(@class,'Timestamp')]")
        public WebElement label_date;


        RowElements(SearchContext context) {
            super(context, 15);
        }
    }

    private class DetailElements extends AbstractPageElements {

        @FindBy(xpath = ".//tbody/tr")
        public List<WebElement> row_all;


        DetailElements(SearchContext context) {
            super(context, 15);
        }
    }


}
