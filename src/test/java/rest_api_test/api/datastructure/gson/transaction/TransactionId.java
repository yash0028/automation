package rest_api_test.api.datastructure.gson.transaction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TransactionId {
    private static final Logger log = LoggerFactory.getLogger(TransactionId.class);

    protected String transactionId;

    /*
    CONSTRUCTOR
    */
    
    /*
    CLASS METHODS
    */

    public String getTransactionId() {
        return transactionId;
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */

    public static final class Builder {
        protected String transactionId;

        public Builder withTransactionId(String transactionId) {
            this.transactionId = transactionId;
            return this;
        }

        public TransactionId build() {
            TransactionId transactionId = new TransactionId();
            transactionId.transactionId = this.transactionId;
            return transactionId;
        }
    }


}
