package ui_test.step;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.ContractPage;
import ui_test.page.exari.contract.wizard.WizardManager;
import ui_test.page.exari.home.DashboardPage;
import ui_test.page.exari.home.site.subpages.GenericSitePage;
import ui_test.page.exari.login.LoginPage;
import ui_test.util.IUiStep;
import ui_test.util.IWebInteract;
import util.configuration.IConfigurable;
import util.file.IFileReader;

import java.util.Map;


public class ExariSteps implements IUiStep, IFileReader, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(IWebInteract.class);

    private DashboardPage dashboardPage;
    private ContractPage contractPage;
    private GenericSitePage sitePage;

    @Given("^I am logged into Exari Dev as a valid user and go to the \"([^\"]*)\" site$")
    public void loginSitePage(String siteOption) {
        loginAndGoToHomePage();
        setSite(siteOption);
    }

    @When("^I author a contract using the following contract information$")
    public void authorContract(DataTable contractDataTable) {
        Map<String, String> contractParam = contractDataTable.asMap(String.class, String.class);

        sitePage.startContractAuthor();
        WizardManager wizard = sitePage.getContractWizard();

        //PES Input & PES Response :: Search PES for MPIN or TIN
        assert wizard.searchPES(
                contractParam.getOrDefault("MPIN", null),
                contractParam.getOrDefault("TIN", null),
                1
        );

        //Provider Details :: Enter the Market number to use
        assert wizard.enterMarketNumber(
                contractParam.getOrDefault("Market Number", null)
        );

        //Document Selection :: Select Paper Type
        assert wizard.selectPaperType(
                contractParam.getOrDefault("Paper Type", null)
        );

        //Enter Phycon
        assert wizard.enterPhyconNumber(
                contractParam.getOrDefault("Phycon", null)
        );

        //Appendix 1 :: Select Additional Manuals
        assert wizard.enterAppendix1();

        //Appendix 2 ::
        assert wizard.enterAppendix2();

        //Payment Appendix ::
        assert wizard.enterPaymentAppendix();

        //Regulatory Appendix :: Search for Regulator
        assert wizard.selectRegulatoryAppendix("iowa", 0);

        //Provider Roster :: Select Roster Action
        assert wizard.selectProviderRoster();

        //Preview Contact & Wizard Complete :: no operation
        assert wizard.previewContractAndComplete();

        //Back to contract page
        contractPage = sitePage.getContractPage();
        assert contractPage.confirmCurrentPage();

        //Perform QA analysis and set status as active
        assert markContractActive();
    }

    @Then("^I have an active contract in Exari$")
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
        LoginPage loginPage = new LoginPage(getDriver());
        Assert.assertTrue(loginPage.confirmCurrentPage());

        Assert.assertTrue(loginPage.login());
        log.info("login successful");

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

        assert wizard.finalCapture();

        //Back to Contract Page
        assert contractPage.confirmCurrentPage();

        //set Edit Status
        return contractPage.setEditStatus("Active");
    }
}
