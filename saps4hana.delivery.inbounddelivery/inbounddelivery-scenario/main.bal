import ballerina/io;
import osa/api_inbounddelivery_srv as inbound;

configurable string hostname = "my401785.s4hana.cloud.sap";
configurable string username = "intern";
configurable string password = "XPiLkdQhRQcvKFftcFfjgSV<AZJCuYusgjQMPv6t";

public function main() returns error ? {
     inbound:ConnectionConfig config = {
        auth: {
            username: username,
            password: password
        }
    };

    inbound:Client new_client =  check new (config, hostname);
    io:println("Line 19 Client is created successfully");

    var response = new_client->listA_InbDeliveryHeaders();
    io:println("Line 33 ",response);
}
