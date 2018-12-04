package ui_test.step;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.ContractPage;
import ui_test.page.exari.contract.interview.InterviewManager;
import ui_test.page.exari.contract.interview.InterviewPage;
import ui_test.page.exari.contract.interview.flow.FlowMap;
import ui_test.page.exari.contract.wizard.WizardManager;
import ui_test.page.exari.home.DashboardPage;
import ui_test.page.exari.home.site.subpages.GenericSitePage;
import ui_test.page.exari.login.LoginPage;
import ui_test.util.IUiStep;
import util.configuration.IConfigurable;
import util.file.IFileReader;


public class TempSteps implements IUiStep, IFileReader, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(TempSteps.class);

    private DashboardPage dashboardPage;
    private ContractPage contractPage;
    private GenericSitePage sitePage;
    private InterviewPage iPage;

    private FlowMap flowMap;

    @Before("@temp")
    public void loadFlow() {
        //Open flow data
        JsonElement flowData = getJsonElementFromFile("/support/exari/spa_contract.json");
        Gson gson = new GsonBuilder()
                .registerTypeAdapter(FlowMap.class, new FlowMap.Deserializer())
                .create();

        //Convert json flow data into a flow map
        flowMap = gson.fromJson(flowData, FlowMap.class);
    }

    @Given("^I am logged into Exari Dev as a valid user and go to the \"([^\"]*)\" site asdf$")
    public void loginSitePage(String siteOption) {
        loginAndGoToHomePage();
        setSite(siteOption);
    }

    @When("^I author a contract using the following contract information asdf$")
    public void authorContract(DataTable contractDataTable) {
//        Map<String, String> contractParam = contractDataTable.asMap(String.class, String.class);
        sitePage.startContractAuthor();

        InterviewManager manager = new InterviewManager(getDriver(), flowMap);
        manager.startFlow();

        //Perform QA analysis and set status as active
        assert markContractActive();
    }

    @Then("^I have an active contract in Exari asdf$")
    public void checkActiveContact() {
        log.info("checking for active status");
        assert contractPage.checkActiveStatus();
    }

    /*
    HELPER METHODS
     */

    private void loginAndGoToHomePage() {
        String url = configGetOptionalString("exari.devURL").orElse("");
        getDriver().get(url);
        log.info(getDriver().getTitle());
        LoginPage loginPage = new LoginPage(getDriver());
        Assert.assertTrue(loginPage.confirmCurrentPage());

        Assert.assertTrue(loginPage.login());

        dashboardPage = loginPage.getHomePage();
    }

    private void setSite(String siteOption) {
        Assert.assertTrue(dashboardPage.confirmCurrentPage());
        sitePage = dashboardPage.getNavigationPanel().setSiteEnvironment(siteOption);

        assert sitePage.confirmCurrentPage();
        log.info("moved to {} site", siteOption);
    }

    private boolean markContractActive() {
        WizardManager wizard = contractPage.getContractWizard();

        //set Edit Status
        contractPage.setEditStatus("Final Pending QA");

        //click Final Capture
        contractPage.clickFinalCapture();

        log.info("final capture finished");

        assert wizard.finalCapture();

        //Back to Contract Page
        assert contractPage.confirmCurrentPage();

        //set Edit Status
        return contractPage.setEditStatus("Active");
    }
}
