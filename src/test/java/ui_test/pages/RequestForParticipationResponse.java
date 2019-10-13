package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

public class RequestForParticipationResponse extends GenericInputPage
{
    public RequestForParticipationResponse(WebDriver driver)
    {
        super(driver);
    }

    public void performAction(){
        assert clickNext();
        assert waitForPageLoad();
    }
}