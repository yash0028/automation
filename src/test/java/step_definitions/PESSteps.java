package step_definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import gherkin.deps.com.google.gson.JsonObject;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;
import io.restassured.specification.RequestSpecification;

import java.util.List;

import static org.junit.Assert.assertTrue;
import static io.restassured.RestAssured.given;

/**
 * Created by jwacker on 5/16/2018.
 */
public class PESSteps {
    private static final String BASE_URI = "http://demographics-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String COUNTER_PARTIES_ENDPOINT = "/v1.0/counterparties/search";
    private RequestSpecification request;
    private Response response;
    private JsonObject commonSearchParams;

    public PESSteps(){
        this.commonSearchParams = new JsonObject();

        commonSearchParams.addProperty("mpin", "30");
        commonSearchParams.addProperty("tin", "381359063");
        commonSearchParams.addProperty("npi", "1396717450");
    }

//F137899

    //US861016

    @Given("^the Exari Interview is built with the search parameters \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\"$")
    public void theExariInterviewIsBuiltWithTheSearchParameters(String mpin, String tin, String npi, String fn, String ln, String city, String zip, String state) throws Throwable {

        request = given().baseUri(BASE_URI).header("Content-Type", "application/json").body(commonSearchParams.toString());

    }

    @When("^the user completes the search parameters for Demographic data needs$")
    public void theUserCompletesTheSearchParametersForDemographicDataNeeds() throws Throwable {

        response = request.post(COUNTER_PARTIES_ENDPOINT);

    }

    @Then("^the API should use the parameters to obtain the Demographic data from the source system \\(PES\\)$")
    public void theAPIShouldUseTheParametersToObtainTheDemographicDataFromTheSourceSystemPES() throws Throwable {

        ResponseBody raResponse = response.getBody();
        boolean result = true;
        String[] matches = new String[] {"mpin", "tin", "address"};

        //System.out.println(raResponse.asString());

        for(String field: matches){
            if(!raResponse.asString().toLowerCase().contains(field)) { result = false; }
        }

        assertTrue(result);

    }

    //US1089376

    @Given("^many API's Exist$")
    public void manyAPISExist() throws Throwable {
        // noop -- doesn't need to be tested as it's a Spike story
    }

    @Then("^the developer needs to understand the different APIs in order to use the correct one\\.$")
    public void theDeveloperNeedsToUnderstandTheDifferentAPIsInOrderToUseTheCorrectOne() throws Throwable {
        // noop -- doesn't need to be tested as it's a Spike story
    }

    //US1095963

    @Given("^a user has searched for provider$")
    public void aUserHasSearchedForProvider() throws Throwable {

        request = given().baseUri(BASE_URI).header("Content-Type", "application/json").body(commonSearchParams.toString());

        assertTrue(commonSearchParams != null);

    }

    @When("^there are multiple results$")
    public void thereAreMultipleResults() throws Throwable {

        response = request.post(COUNTER_PARTIES_ENDPOINT);
        ResponseBody raResponse = response.getBody();

        assertTrue(response != null);
    }

    @Then("^I see a list of those results\\.$")
    public void iSeeAListOfThoseResults() throws Throwable {

        ResponseBody raResponse = response.getBody();
        assertTrue(raResponse.asString() != null);
    }

    @Then("^I can select one to read more details\\.$")
    public void andICanSelectOneToReadMoreDetails() throws Throwable {
        // noop
    }

    //US1093992

    @Given("^a user needs to call PES$")
    public void aUserNeedsToCallPES() throws Throwable {

        request = given().baseUri(BASE_URI).header("Content-Type", "application/json");

    }


    @When("^a user incorrectly inputs data$")
    public void aUserIncorrectlyInputsData() throws Throwable {
        JsonObject badJsonBody = new JsonObject();

        badJsonBody.addProperty("mpin", "abcd1234");
        badJsonBody.addProperty("baddata1", "badvalue");
        badJsonBody.addProperty("baddata2", "badvalue");
        badJsonBody.addProperty("baddata3", "badvalue");
        badJsonBody.addProperty("baddata4", "badvalue");

        request.body(badJsonBody.toString());

        response = request.post(COUNTER_PARTIES_ENDPOINT);
    }

    @Then("^the user receives a bad input error message$")
    public void theUserReceivesABadInputErrorMessage() throws Throwable {

        ResponseBody raResponse = response.getBody();
//        System.out.println("RESPONSE: " + raResponse.asString());

        assertTrue(raResponse.asString().toLowerCase().contains("[]"));

    }

    @When("^the system goes down$")
    public void theSystemGoesDown() throws Throwable {

        request.baseUri(BASE_URI +"/asdf");
        response = request.post();

    }

    @Then("^the user receives a system error message$")
    public void theUserReceivesASystemErrorMessage() throws Throwable {

        ResponseBody raResponse = response.getBody();
        assertTrue(raResponse.asString().contains("error"));

    }

    @When("^a catastrophic error occurs$")
    public void aCatastrophicErrorOccurs() throws Throwable {

        request.baseUri(BASE_URI +"/asdf");
        response = request.post();

    }

    @Then("^a service ticket will need to be created\\.$")
    public void aServiceTicketWillNeedToBeCreated() throws Throwable {

        ResponseBody raResponse = response.getBody();
        assertTrue(raResponse.asString().contains("error"));

    }

    @Then("^an error code will be logged\\.$")
    public void anErrorCodeWillBeLogged() throws Throwable {

        ResponseBody raResponse = response.getBody();
        assertTrue(raResponse.asString().contains("error"));

    }

    //US861016

    @Given("^I am a User with access to add a Counterparty to an Interview$")
    public void iAmAUserWithAccessToAddACounterpartyToAnInterview() throws Throwable {
        //noop - assuming access
    }

    @When("^I search for a Counterparty using MPIN of \"([^\"]*)\"$")
    public void iSearchForACounterpartyUsingMPINOf(String mpin) throws Throwable {
        JsonObject jsonBody = new JsonObject();

        jsonBody.addProperty("mpin", mpin);

        request = given().baseUri(BASE_URI).header("Content-Type", "application/json").body(jsonBody.toString());
    }

    @Then("^PES returns the following information:$")
    public void pesReturnsTheFollowingInformation(DataTable fieldsDT) throws Throwable {
        boolean match         = true;
        List<String> fields   = fieldsDT.asList(String.class);

        response              = request.post(COUNTER_PARTIES_ENDPOINT);
        String responseString = response.asString().toLowerCase();

//        System.out.println("RESPONSE: " + responseString);

        for(String field: fields){
            field = field.trim();

            if(!responseString.contains(field.toLowerCase())){
                match = false;
//               System.out.println("-----FAILED FIELD: " + field);
            }
        }
        assertTrue(match);
    }
}
