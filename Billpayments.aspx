<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Billpayments.aspx.cs" Inherits="PegpayDocumentation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="margin-bottom: 30px;">
        <div class="col-md-4 mt-5" style="background-color: #ebeef5; margin-top: 20px; height: 100%; position: fixed; z-index: 1; top: 0; left: 0; padding-top: 20px; width: 300px;">
            <ul>
                <li class="bd-links-group py-2 list-unstyled">
                    <h2><strong class="bd-links-heading d-flex w-100 align-items-center fw-semibold rounded active">Get Started
                    </strong></h2>

                    <ul class="list-unstyled fw-normal pb-2 small">
                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton0" class="bd-links-link d-inline-block rounded" runat="server" OnClick="LinkButton0_Click">Introduction</asp:LinkButton></li>

                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton1" class="bd-links-link d-inline-block rounded" runat="server" OnClick="LinkButton1_Click">System Description</asp:LinkButton></li>

                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton2" class="bd-links-link d-inline-block rounded" runat="server" OnClick="LinkButton2_Click"> System Features</asp:LinkButton></li>

                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton3" class="bd-links-link d-inline-block rounded" runat="server" OnClick="LinkButton3_Click">Post Transactions Details</asp:LinkButton></li>

                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton4" class="bd-links-link d-inline-block rounded" runat="server" OnClick="LinkButton4_Click">Data Dictionary </asp:LinkButton></li>
                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton5" class="bd-links-link d-inline-block rounded" runat="server" OnClick="LinkButton5_Click"> Field Mapping</asp:LinkButton></li>

                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton6" class="bd-links-link d-inline-block rounded" runat="server" OnClick="LinkButton6_Click">Security Mapping</asp:LinkButton></li>
                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton7" class="bd-links-link d-inline-block rounded" runat="server" OnClick="LinkButton7_Click">Other Requirements</asp:LinkButton></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="col-md-8" style="margin-left: 300px;">
            <asp:MultiView ID="MainContent" runat="server" ActiveViewIndex="0">

                <asp:View ID="introduction" runat="server">
                    <section id="intro">
                        <div class="styleup">
                            <h3>Introduction</h3>
                            <p>
                                Pegasus Technologies Ltd is a payments Aggregator/Integrator company with existing relationships with a number of Banks and Mobile Money Service Providers through which customers can settle any payments. Pegasus Technologies also has existing relationships with a number of service providers who would like to have payments for their services settled through the PegPayAPI Payments Platform that acts as an interface between service providers and payments handlers.
                            </p>
                            <p>
                                In the past, any customer of any service provider wishing to make a payment would be required to walk into any partnering bank or mobile money kiosk and pay for their services. However, this  arrangement has a number of challenges that include the following:

                            </p>
                            <ul>
                                <li>
                                    When making payments, these customers do sometimes supply erroneous account customer references or tellers capture the supplied references wrongly. 
                                    This happens because at the point of posting payments, the tellers have no way of validating these referencesto ensure that they are posting against 
                                    correct customer references or posting against the correct utility customer. This has led to a number of situations where customers’ payments are 
                                    made but not credited due to wrong or insufficient information from the banksto correctly credit these customers. Thisin turn has caused a lot of distress 
                                    to the customers who get disconnected even after payment has been made. As for the 
                                    utility, it creates an ever increasing amount of money on the suspense account for which cannot easily be reconciled with customer’s payments.
                                </li>
                                <li>Sometimes returns from the banks of payments made against customers come in late, and consequently customers get the services they paid for later than anticipated. In some cases, customers have their account disconnected as a result of returns not getting to the utility in a timely manner.</li>

                            </ul>
                            <p>This has caused customers to shun the bank payment option due to the above mentioned inefficiencies and opt to pay directly at the utility’s cash points.</p>
                            <h3>Purpose of the Platform</h3>
                            <p>
                                To eliminate the above mentioned challenges, Pegasus Technologies has developed an interface to all the utilities’ billing systems 
                                through which the banks and mobile money companies can beable to validate the utilities’ customer details in real time and post transactions for 
                                utility payments through to the PegPayAPI Payments platform in real time to have the customer’s account updated.
                            </p>
                            <h3>Intended Audience and Reading Suggestions</h3>
                            <p>
                                This document is intended for a more technical audience, such as developers, project managers, 
                                testers,system analysts and architects, consultants and requirements documentation writers. It’s 
                                generally intended for all those intending to implement technical integration between their 
                                systems and the PegPay Payments Platform.
                            </p>

                            <h3>Product Scope</h3>
                            <p>The PegPayAPI Payments Interface will contain 3 general functionalities:</p>
                            <dl>
                                <dt>Validate Utilities’ Customer Details: </dt>
                                <dd>This functionality will enable Utilities’ collection agents to validate the details of the customer intending to make a utility payment. This functionality has to precede the  processing of the payment.</dd>
                            </dl>
                            <dl>
                                <dt>Post Utilities’ Customer Transactions: </dt>
                                <dd>This functionality is used by the utilities’ collection agents to post the transactions made for utility payments through to the PegPay Payments Platform. These payments are immediately reflected in the billing/payments platforms of the utility companies. </dd>
                            </dl>
                            <dl>
                                <dt>Get Transaction Details </dt>
                                <dd>This functionality is used by the collection agents to get the details of previously posted transactions. It can be used to confirm whether a request was successfully processed in the event of a communication error during processing. It can also be used to carry out auto-reconciliation with the PegPay Payments platform </dd>
                            </dl>


                        </div>
                    </section>
                </asp:View>
                <asp:View ID="View1" runat="server">
                    <section id="Integration">
                        <div class="styleup">
                            <h3>SYSTEM DESCRIPTION</h3>
                            <h4>Proposed Bill Collection Procedure at Banks</h4>

                            <img src="../Images2/bill1.jpg" alt="billpaymnt image" />
                            <h3>What isthe flow/experience like? </h3>
                            <p>
                                For Prepaid Vendors, the requirement is for the Vendor to first prefund a Pegasus account at the 
                                Bank. When the prefunding is confirmed (for S.I. T’s this step can be skipped), the vendor account 
                                at Pegasus is credited by the equivalent amount that was deposited. This means that the vendor
                                and his customers can now transact via the PegPayAPI. However, the vendor’s customers will 
                                only be allowed to transact amounts totaling up to the amount deposited.
                            </p>

                            <ol>
                                <li>
                                    Customer inputs/gives utility’s customer ID (CustomerRef) number to vendor system. 
                                    Vendor System sends QueryCustomerDetails request to PegPayAPI. PegPayAPI validatesrequest. 
                                </li>
                                <ol>
                                    <li>
                                        If request is valid, PegPayAPI forwards Request to Utility. Utility returns details to 
                                        PegPayAPI and PegPayAPI sends details to VendorSystem. VendorSystem is required to 
                                        display the details to the customer so customer can verify the account belongs to him.

                                    </li>
                                    <li>If request fails validation PegPayAPI sends error response with reason back to Vendor 
System.</li>
                                </ol>
                                <li>Customer inputs amount to pay into Vendor System, Vendor System submits a 
PostTransactionRequest which includes the Vendor Transaction ID, amount, CustomerRef and a 
digital signature to PegPayAPI.
                                    <br />
                                    PegPayAPI validates request including verifying digital signature to make sure data has not been 
tampered with or altered whilst in transit.
 </li>
                                <ul>
                                    <li>If Request is valid PegPayAPI returns PostTransactionResponse to Vendor System which 
indicates the transaction is PENDING. PegPayAPI goes ahead to process the request 
asynchronously.</li>
                                    <li>If request fails validation PegPayAPI sends error response indicating FAILURE along with reason back to Vendor System</li>
                                </ul>
                                <li>If Vendor system successfully posted a transaction, Vendor System continuously polls the 
PegPayAPI every X seconds (recommended minimum is 2 min) by sending a 
GetTransactionStatusRequest which has Vendor Transaction ID among the expected parameters 
to the PegPayAPI. PegPayAPI Validates API and retrieves Transaction Status and Details for 
Transaction with ID=Vendor Transaction ID before returning a GetTransactionStatusResponse to the Vendor System.
    <br />
                                    The GetTransactionStatusResponse has a flag that indicatesthe transaction status.

                                </li>
                                <ul>
                                    <li>If Transaction Status is FAILED, Vendor System stops polling for transaction status and notifies customer of failure. </li>
                                    <li>If Transaction Status is SUCCESS, Vendor System stops polling for transaction status and notifies customer of SUCCESS.</li>

                                    <li>If Transaction Status is PENDING, Vendor System continues to poll for transaction status every X min.</li>
                                </ul>
                            </ol>
                        </div>
                    </section>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <section id="ApiFunctions">
                        <div class="styleup">

                            <h3>SYSTEM FEATURES </h3>
                            <p>This section aimsto give the developer an Overview/basic understanding of how the API works</p>
                            <p>
                                It’s not meant to be the final comprehensive document on how accessing each utility will work. 
However, based on the basic message structure the developer will know how access to 
subsequent utilities will work.
                            </p>
                            <h4>Query Customer Details</h4>
                            <dl>

                                <dd>Description</dd>
                                <dt>Clients of the PegPay platform will utilize this functionality to generally query partnering utilities’ 
customer databases and validate the paying customers’ information before they proceed to 
effect any transactions for these customers. By so doing, this will reduce on any errors that will 
be introduced into the database by the collecting agents. Errors such as crediting the wrong 
account will be eliminated by using this functionality to validate customer data.
 </dt>
                            </dl>
                            <h4>Stimulus/Response Sequences </h4>
                            <dl>
                                <dd>Stimulus</dd>
                                <dt>The agents will supply the utility customer reference and/or the area to which the customer 
belongs, the vendor code and the password to the PegPay platform for verification. </dt>
                                <dt><strong>Stimulus (custRef, area, UtilityCode, vendorCode, password, DigitalSignature)</strong> </dt>
                                <dt>The expected QueryCustomerDetailsRequest is expected to look like this.</dt>
                            </dl>

                            <pre style="">
<code style="white-space:pre-wrap">
 POST /TestPegPayApi/PegPay.asmx HTTP/1.1 
Host: 176.XXX.XXX.XXX
Content-Type:text/xml; charset=utf-8 
Content-Length: length
SOAPAction: "http://PegPayPaymentsApi/QueryCustomerDetails"
&lt?xml version="1.0" encoding="utf-8"?>
&ltsoap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"xmlns:xsd="http://www.w3.org/2001/XMLSchema"xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
&ltsoap:Body>
&ltQueryCustomerDetails xmlns="http://PegPayPaymentsApi/">
&ltquery>
&ltQueryField1>CustomerRef &ltQueryField1>
&ltQueryField2>Area(NWSC)/BouquetCode(PAYTV) &ltQueryField2>
&ltQueryField4>UtilityCode (NWSC, DSTV, UMEME) &ltQueryField4>
&ltQueryField5>VendorCode(REPLACE) &ltQueryField5>
&ltQueryField6>Password(REPLACE) &ltQueryField6>
&ltQueryField8>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX &ltQueryField8>
&ltquery>
&lt/QueryCustomerDetails>
&lt/soap:Body>
&lt/soap:Envelope>

</code>
</pre>
                            <h5>Below is the description of the common expected parameters.</h5>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Parameter</th>
                                        <th>Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>QueryField1</td>
                                        <td>CustomerRef(Utility CustomerID)</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField2</td>
                                        <td>Area (NWSC)/BouquetCode(DSTV).etc.</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField4</td>
                                        <td>UtilityCode(NWSC,UMEME,DSTV etc.)</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField5</td>
                                        <td>VendorCode</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField6</td>
                                        <td>Password</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField8</td>
                                        <td>DigitalSignature</td>
                                    </tr>
                                </tbody>
                            </table>
                            <%--<img src="../images2/commonparam.jpg" alt="common params" />--%>
                            <h3>Digital Signature</h3>

                            <strong>dataToSign = VendorCode + Password + UtilityCode + CustomerRef OR literally
(QueryField5 + QueryField6 + QueryField4 + QueryField1)
 </strong>
                            <p>A sample of the utilityCode for (NWSC, UMEME)</p>
                            <pre>
 <code style="white-space:pre-wrap">
     NWSC
&lt?xml version="1.0" encoding="utf-8"?>
&ltsoap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
&ltsoap:Body>
&ltQueryCustomerDetails xmlns="http://PegPayPaymentsApi/">
&ltquery>
&ltQueryField1>31263&lt/QueryField1>
&ltQueryField2>Jinja&lt/QueryField2>
&ltQueryField4>NWSC&lt/QueryField4>
&ltQueryField5>FINCA&lt/QueryField5>
&ltQueryField6>83X52IP734&lt/QueryField6>
&ltQueryField8>XXXXXXXXXXXXXXXXXXXXXX&lt/QueryField8>
&lt/query>
&lt/QueryCustomerDetails>
&lt/soap:Body>
  </code>
 </pre>
                            <p>
                                Below is the description of the common expected parameters.

                            </p>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Parameter</th>
                                        <th>Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>QueryField1</td>
                                        <td>31263</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField2</td>
                                        <td>Jinja</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField4</td>
                                        <td>NWSC</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField5</td>
                                        <td>FINCA</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField6</td>
                                        <td>83X52IP734</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField8</td>
                                        <td>XXXXXXXXXXXXXXXXXXXXX</td>
                                    </tr>
                                </tbody>
                            </table>
                            <%--<img src="../images2/nwsc.jpg" alt="nwsc" />--%>
                            <h4>Umeme sample</h4>
                            <pre>
        <code>
            UMEME
&lt?xml version="1.0" encoding="utf-8"?>
&ltsoap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
&ltsoap:Body>
&ltQueryCustomerDetails xmlns="http://PegPayPaymentsApi/">
&ltquery>
&ltQueryField1>205031293&lt/QueryField1>
&ltQueryField2>POSTPAID&lt/QueryField2>
&ltQueryField4>UMEME&lt/QueryField4>
&ltQueryField5>STANBIC_VAS&lt/QueryField5>
&ltQueryField6>62S44HN420&lt/QueryField6>
&ltQueryField8>XXXXXXXXXXXXXXXXXXXXXX&lt/QueryField8>
&lt/query>
&lt/QueryCustomerDetails>
&lt/soap:Body>
&lt/soap:Envelope>
        </code>
    </pre>
                            <p>Below is the description of the common expected parameters </p>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Parameter</th>
                                        <th>Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>QueryField1</td>
                                        <td>205031293</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField2</td>
                                        <td>POSTPAID</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField4</td>
                                        <td>UMEME</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField5</td>
                                        <td>STANBIC</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField6</td>
                                        <td>62S44HN420</td>
                                    </tr>
                                    <tr>
                                        <td>QueryField8</td>
                                        <td>XXXXXXXXXXXXXXXXXXXXX</td>
                                    </tr>
                                </tbody>
                            </table>
                            <%--<img src="../images2/umeme.jpg" alt="umeme" />--%>

                                <caption>
                                    <h3>Response</h3>
                                    <p>
                                        The system will respond by an object of type: Response with the following fields:
                                    </p>
                                    <ol>
                                        <li>CustRef</li>
                                        <li>CustName </li>
                                        <li>Area</li>
                                        <li>OutstandingBalance</li>
                                        <li>StatusCode</li>
                                        <li>StatusDescription</li>
                                    </ol>
                                    <p>
                                        All successful customer queries will return with the<strong> StatusCode</strong> field as <strong>“0”</strong> and a <strong>StatusDescription </strong>field as <strong>“SUCCESS”.</strong> In such an event the other fields will be populated with the customer’s details.
                                    </p>
                                    <p>
                                        Any query that returns with a different <strong>StatusCode</strong> than the one mentioned above will be a failed query and the failure reason will be indicated in the StatusDescription field returned. Such an error should be relayed back to the teller making the query or the customer
                                    </p>
                                    <h4>PegPayAPI response will be in the format below</h4>
                                    <pre>
                <code>
&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;
&amp;ltsoap:Envelope xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;xmlns:xsd=&quot;http://www.w3.org/2001/XMLSchema&quot; xmlns:soap=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot;&gt;
&amp;ltsoap:Body&gt;
&amp;ltQueryCustomerDetailsResponse xmlns=&quot;http://PegPayPaymentsApi/&quot;&gt;
&amp;ltQueryCustomerDetailsResult&gt;
&amp;ltResponseField1&gt;CustomerRef&lt;/ResponseField1&gt;
&amp;ltResponseField2&gt;CustomerName&lt;/ResponseField2&gt;
&amp;ltResponseField3&gt;Area/BouquetCode&lt;/ResponseField3&gt;
&amp;ltResponseField4&gt;Amount Due&lt;/ResponseField4&gt;
&amp;ltResponseField5&gt;CustomerType&lt;/ResponseField5&gt;
&amp;ltResponseField6&gt;StatusCode&lt;/ResponseField6&gt;
&amp;ltResponseField7&gt;StatusDescription&lt;/ResponseField7&gt;
&lt;/QueryCustomerDetailsResult&gt;
&lt;/QueryCustomerDetailsResponse&gt;
&lt;/soap:Body&gt;
&lt;/soap:Envelope&gt;
  </code>
            </pre>
                                    <h4>Below is the description of the commonly returned parameter</h4>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Parameter</th>
                                                <th>Description</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>ResponseField1</td>
                                                <td>Customer Ref(utility customerID)</td>
                                            </tr>
                                            <tr>
                                                <td>ResponseField2</td>
                                                <td>Customer Name</td>
                                            </tr>
                                            <tr>
                                                <td>ResponseField3</td>
                                                <td>Area(NWSC)/Tin etc.</td>
                                            </tr>
                                            <tr>
                                                <td>ResponseField4</td>
                                                <td>Outstanding Balance/Amount Due</td>
                                            </tr>
                                            <tr>
                                                <td>ResponseField5</td>
                                                <td>Customer Type e.g. PREPAID or POSTPAID, DSTV or GOTV etc.</td>
                                            </tr>
                                            <tr>
                                                <td>ResponseField6</td>
                                                <td>Status Code</td>
                                            </tr>
                                            <tr>
                                                <td>ResponseField7</td>
                                                <td>Status Description</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <%--<img src="../images2/reponse.jpg" alt="response" />--%>
                                    <p>
                                        Sample of Query Customer Details Response
                                    </p>
                                    <pre>
    <code>
&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;
&amp;ltsoap:Envelope xmlns:soap=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns:xsd=&quot;http://www.w3.org/2001/XMLSchema&quot;&gt;
&amp;ltsoap:Body
&amp;ltQueryCustomerDetailsResponse xmlns=&quot;http://PegPayPaymentsApi/&quot;&gt;
&amp;ltQueryCustomerDetailsResult&gt;
&amp;ltResponseField1&gt;4131263&lt;/ResponseField1&gt;
&amp;ltResponseField2&gt;WANDERA ALEX&lt;/ResponseField2&gt;
&amp;ltResponseField3&gt;Jinja&lt;/ResponseField3&gt;
&amp;ltResponseField4&gt;39711&lt;/ResponseField4&gt;
&amp;ltResponseField6&gt;0&lt;/ResponseField6&gt;
&amp;ltResponseField7&gt;SUCCESS&lt;/ResponseField7&gt;
&lt;/QueryCustomerDetailsResult&gt;
&lt;/QueryCustomerDetailsResponse&gt;
&lt;/soap:Body&gt;
&lt;/soap:Envelope&gt;
    </code>
</pre>
                                    <p>
                                        Below is the description of the commonly returned parameters</p>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Parameter</th>
                                                <th>Description</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>ResponseField1</td>
                                                <td>4131263</td>
                                            </tr>
                                            <tr>
                                                <td>ResponseField2</td>
                                                <td>WANDERA</td>
                                            </tr>
                                            <tr>
                                                <td>ResponseField3</td>
                                                <td>Jinja</td>
                                            </tr>
                                            <tr>
                                                <td>ResponseField4</td>
                                                <td>39711</td>
                                            </tr>
                                            <tr>
                                                <td>ResponseField6</td>
                                                <td>0</td>
                                            </tr>
                                            <tr>
                                                <td>ResponseField7</td>
                                                <td>SUCCESS</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <%--<img src="../images2/nwscresponse.jpg" />--%>
                                </caption>
                        </div>
                    </section>
                    <br />
                </asp:View>

                <asp:View ID="View3" runat="server">
                    <section>
                        <div class="styleup">

                            <h3>Post Transactions Details </h3>

                            <dl>
                                <dt>Description</dt>
                                <dd>PegPay’s collection agents will utilize this feature to post transactions that have been validated 
and made against a utility to the PegPay payments platform.
After validation of customer details has been made, the collection agents will then collect the 
payment details of the customer and effect this payment against the customer’s validated details. 
The PegPay platform provides a method on its API to have payments posted against the validated 
customer details. The method used to make payments is: PrepaidVendorPostTransaction </dd>

                                <dt>Stimulus/Response Sequences</dt>
                                <dt>Stimulus </dt>
                                <dd>When posting a payment, the vendor hasto wrap the parameters of the transaction in an object 
of type: TransactionRequest and pass it over to the PegPayAPI platform for posting.
 </dd>
                                <dd>he parameters posted through this object are described below:
 </dd>
                                <dt>PrepaidVendorPostTransaction (TransactionRequest trans)
</dt>
                                <dd>The expected PostTransactionRequest is expected to look like this</dd>


                            </dl>
                            <pre>
                        <code>
                            POST /TestPegPayApi/PegPay.asmx HTTP/1.1
Host: 172.XXX.XXX.XXXX
Content-Type:text/xml; charset=utf-8 
Content-Length: length
SOAPAction: "http://PegPayPaymentsApi/PrepaidVendorPostTransaction"
&lt?xml version="1.0" encoding="utf-8"?>
&ltsoap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
&ltsoap:Body>
&ltPrepaidVendorPostTransaction xmlns="http://PegPayPaymentsApi/">
&lttrans>
&ltPostField1>Customer Ref&lt/PostField1>
&ltPostField2>Customer Name&lt/PostField2>
&ltPostField3>Area/BouquetCode&lt/PostField3>
&ltPostField4>Utility Code&lt/PostField4>
&ltPostField5>PaymentDate&lt/PostField5>
&ltPostField6>&lt/PostField6>
&ltPostField7>Amount&lt/PostField7>
&ltPostField8>Transaction Type&lt/PostField8>
&ltPostField9>VendorCode(REPLACE)&lt/PostField9>
&ltPostField10>Password(REPLACE)&lt/PostField10>
&ltPostField11>Customer Tel&lt/PostField11>
&ltPostField12>Reversal&lt/PostField12>
&ltPostField13>TranIdToBeReversed&lt/PostField13>
&ltPostField14>Teller&lt/PostField14>
&ltPostField15>Offline&lt/PostField15>
&ltPostField16>DigitalSignature(REPLACE)&lt/PostField16>
&ltPostField17>&lt/PostField17>
&ltPostField18>Narration&lt/PostField18>
&ltPostField19>Email&lt/PostField19>
&ltPostField20>Vendor Transaction Id&lt/PostField20>
&ltPostField21>Customer Type&lt/PostField21>
&lt/trans>
&lt/PrepaidVendorPostTransaction>
&lt/soap:Body>
&lt/soap:Envelope>
  </code>
   </pre>
                            <h5>Below is the description of the common expected parameters</h5>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Parameter</th>
                                        <th>Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>PostField1</td>
                                        <td>CustomerRef(Utility CustomerID)</td>
                                    </tr>
                                    <tr>
                                        <td>PostField2</td>
                                        <td>Customer Name</td>
                                    </tr>
                                    <tr>
                                        <td>PostField21</td>
                                        <td>Customer Type e.g. PREPAID or POSTPAID etc.</td>
                                    </tr>
                                    <tr>
                                        <td>PostField3</td>
                                        <td>Area</td>
                                    </tr>
                                    <tr>
                                        <td>PostField4</td>
                                        <td>UtilityCode</td>
                                    </tr>
                                    <tr>
                                        <td>PostField5</td>
                                        <td>PaymentDate in dd/MM/yyyy e.g. 28/12/2015</td>
                                    </tr>
                                    <tr>
                                        <td>PostField7</td>
                                        <td>TransactionAmount</td>
                                    </tr>
                                    <tr>
                                        <td>PostField8</td>
                                        <td>TransactionType e.g. CASH,EFT etc.</td>
                                    </tr>
                                    <tr>
                                        <td>PostField9</td>
                                        <td>VendorCode</td>
                                    </tr>
                                    <tr>
                                        <td>PostField10</td>
                                        <td>Password</td>
                                    </tr>
<tr>
                                        <td>PostField11</td>
                                        <td>CustomerTel</td>
                                    </tr>
<tr>
                                        <td>PostField12</td>
                                        <td>Reversal (is 0 for Prepaid Vendors)</td>
                                    </tr>
<tr>
                                        <td>PostField13</td>
                                        <td>TranIdToReverse(is left blank)</td>
                                    </tr>
<tr>
                                        <td>PostField14</td>
                                        <td>Teller e.g. can be customerTel or customer Name</td>
                                    </tr>
<tr>
                                        <td>PostField15</td>
                                        <td>Offline (is 0)</td>
                                    </tr>
<tr>
                                        <td>PostField16</td>
                                        <td>DigitalSignature</td>
                                    </tr>
<tr>
                                        <td>PostField17</td>
                                        <td>ChequeNumber(is left Empty)</td>
                                    </tr>
<tr>
                                        <td>PostField18</td>
                                        <td>Narration</td>
                                    </tr>
<tr>
                                        <td>PostField19</td>
                                        <td>Email(can be Empty)</td>
                                    </tr>
<tr>
                                        <td>PostField20</td>
                                        <td>VendorTransaction ID</td>
                                    </tr>
                                </tbody>
                            </table>
                            <%--<img src="../images2/postTransaction.jpg" alt="post" />--%>

                            <h4>Post Prepaid Transaction Request </h4>
                            <pre>
         <code>
             <?xml version="1.0" encoding="UTF-8"?>
&ltsoapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema"xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
&ltsoapenv:Body>
&ltPrepaidVendorPostTransaction xmlns="http://PegPayPaymentsApi/">
&lttrans>
&ltPostField1>04235798420&lt/PostField1>
&ltPostField2>AUSI LUWANO&lt/PostField2>
&ltPostField4>UMEME&lt/PostField4>
&ltPostField5>26/06/2016&lt/PostField5>
&ltPostField6>2&lt/PostField6>
&ltPostField7>10000&lt/PostField7>
&ltPostField8>CASH&lt/PostField8>
&ltPostField9>Micropay&lt/PostField9>
&ltPostField10>30K12CF236&lt/PostField10>
&ltPostField11>256750852201&lt/PostField11>
&ltPostField12>0&lt/PostField12>
&ltPostField13>&lt/PostField13>
&ltPostField14>NONE&lt/PostField14>
&ltPostField15>0&lt/PostField15>
&ltPostField16>n3wTmYPhaR0azNQVuMkf7ihbbcIO6mg1D57TNpxF1B0ULYB07LI920OV2PNTqqp1o4AWGluQsNbS6fcx9YJrXAVFrCz2v8hGHy/GOXLk4emXuasB5QMH1Ll8kjNkW+X2aKFB7wAwGEX9J1Ngnlt3TyA1ix4AIS7VXFyG5X7sjbA=
&lt/PostField16>
&ltPostField17>&lt/PostField17>
&ltPostField18>UMEME PAYMENT FOR 04235798420&lt/PostField18>
&ltPostField20>127003&lt/PostField20>
&ltPostField21>PREPAID&lt/PostField21>
&lt/trans>
&lt/PrepaidVendorPostTransaction>
&lt/soapenv:Body>
&lt/soapenv:Envelope>
         </code>
     </pre>
                            <p>Below is the description of the common expected parameters</p>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Parameter</th>
                                        <th>Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>PostField1</td>
                                        <td>04235798420</td>
                                    </tr>
                                    <tr>
                                        <td>PostField2</td>
                                        <td>AUSI LUWANO</td>
                                    </tr>
                                    <tr>
                                        <td>PostField21</td>
                                        <td>PREPAID</td>
                                    </tr>
                                    <tr>
                                        <td>PostField4</td>
                                        <td>UMEME</td>
                                    </tr>
                                    <tr>
                                        <td>PostField5</td>
                                        <td>26/06/2016</td>
                                    </tr>
                                    <tr>
                                        <td>PostField6</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>PostField7</td>
                                        <td>10000</td>
                                    </tr>
                                    <tr>
                                        <td>PostField8</td>
                                        <td>CASH</td>
                                    </tr>
                                    <tr>
                                        <td>PostField9</td>
                                        <td>Micropay</td>
                                    </tr>
                                    <tr>
                                        <td>PostField10</td>
                                        <td>30K12CF236</td>
                                    </tr>
                                    <tr>
                                        <td>PostField11</td>
                                        <td>256750852201</td>
                                    </tr>
                                    <tr>
                                        <td>PostField12</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>PostField14</td>
                                        <td>NONE</td>
                                    </tr>
                                    <tr>
                                        <td>PostField15</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>PostField18</td>
                                        <td>UMEME PAYMENT FOR 04235798420</td>
                                    </tr>
                                    <tr>
                                        <td>PostField19</td>
                                        <td>Email(can be Empty)</td>
                                    </tr>
<tr>
                                        <td>PostField20</td>
                                        <td>127003</td>
                                    </tr>
                                </tbody>
                            </table>
                            `
                            <h4>Response </h4>
                            <p>
                                The system will respond by returning an object of type: PostResponse It will have

                            </p>
                            <ol>
                                <li>StatusCode</li>
                                <li>StatusDescription</li>
                                <li>PegpayId</li>
                                <li>CompanyPaymentReference</li>
                            </ol>
                            <p>
                                All successful transaction postings will return with the StatusCode field as “0” and a 
StatusDescription field as “SUCCESS”. In such an event the PegpayId field will contain the 
transaction reference number from PegPay
                            </p>
                            <p>
                                Any transaction posting that returns with a different StatusCode than the one mentioned 
above will be a failed transaction posting and the failure reason will be indicated in the 
StatusDescription field returned.
                            </p>

                            <h5>PegPayAPI response will be in the format below</h5>
                            <pre>
<code>
 HTTP/1.1 200 OK
Content-Type: text/xml; charset=utf-8 
Content-Length: length
&lt?xml version="1.0" encoding="utf-8"?>
&ltsoap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
&ltsoap:Body>
&ltPostTransactionResponse xmlns="http://PegPayPaymentsApi/">
&ltPostTransactionResult>
&ltResponseField6>1000&lt/ResponseField6>
&ltResponseField7>PENDING&lt/ResponseField7>
&ltResponseField8>1234&lt/ResponseField8>
&lt/PostTransactionResult>
&lt/PostTransactionResponse>
&lt/soap:Body>
&lt/soap:Envelope>
 </code>
  </pre>
                            <p>Below isthe description of the commonly returned parameters </p>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Parameter</th>
                                        <th>Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>responseField6</td>
                                        <td>Status Code</td>
                                    </tr>
                                    <tr>
                                        <td>responseField7</td>
                                        <td>Status Description</td>
                                    </tr>
                                    <tr>
                                        <td>responseField8</td>
                                        <td>PegPayID</td>
                                    </tr>
                                </tbody>
                            </table>
                            <%--<img src="../images2/posting.jpg" alt="" />--%>


                            <h4>Sample Of Post Prepaid Transaction Response </h4>
                            <pre>
                     <code>
&lt?xml version="1.0" encoding="utf-8"?>
&ltsoap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
&ltsoap:Body>
&ltPrepaidVendorPostTransactionResponse xmlns="http://PegPayPaymentsApi/">
&ltPrepaidVendorPostTransactionResult>
&ltResponseField6>1000&lt/ResponseField6>
&ltResponseField7>PENDING&lt/ResponseField7>
&ltResponseField8>80087642&lt/ResponseField8>
&lt/PrepaidVendorPostTransactionResult>
&lt/PrepaidVendorPostTransactionResponse>
&lt/soap:Body>
&lt/soap:Envelope>

  </code>
  </pre>
                            <p>Below isthe description of the commonly returned parameters </p>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Parameter</th>
                                        <th>Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>responseField6</td>
                                        <td>1000</td>
                                    </tr>
                                    <tr>
                                        <td>responseField7</td>
                                        <td>PENDING</td>
                                    </tr>
                                    <tr>
                                        <td>responseField8</td>
                                        <td>80087642</td>
                                    </tr>
                                </tbody>
                            </table>
                            <%--<img src="../images2/postres.jpg" />--%>

                            <h3>Special Use Cases:</h3>
                            <p>
                                For Prepaid Vendors Utilities SMS, SCHOOL FEES, AIRTIME and DATA, we re-use the same Method 
“PrepaidVendorPostTransaction” but the value in the Post Fields assume new meanings as follows
                            </p>

                            <dl>
                                <dt>1. SMS</dt>
                                <dd>
                                    <pre>
        <code>
&lts:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
&lts:Body>
&ltPrepaidVendorPostTransaction xmlns="http://PegPayPaymentsApi/" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
&lttrans>
&ltPostField1>customerRef&lt/PostField1>
&ltPostField2>customerName&lt/PostField2>
&ltPostField4>SMS&lt/PostField4>
&ltPostField7>0&lt/PostField7>
&ltPostField8>CASH&lt/PostField8>
&ltPostField14>None&lt/PostField14>
&ltPostField9>Vendor Code&lt/PostField9>
&ltPostField10>Password&lt/PostField10>
&ltPostField11>Customer Tel&lt/PostField11>
&ltPostField18>Message&lt/PostField18>
&ltPostField20>VendorTranID&lt/PostField20>
&ltPostField5>TxnDate&lt/PostField5>
&ltPostField16>Digital Signature&lt/PostField16>
&lt/trans>
&lt/PrepaidVendorPostTransaction>
&lt/s:Body>
&lt/s:Envelope>
 </code>
             </pre>
                                </dd>
                            </dl>
                            <dl>
                                <dt>2. SCHOOL FEES</dt>
                                <dd>
                                    <pre>
                 <code>
 &ltns2:Envelope xmlns:ns2="http://www.w3.org/2003/05/soap-envelope" xmlns="http://pegpaypaymentsapi/">
 &ltns2:Body>
 &ltPrepaidVendorPostTransaction>
 &lttrans>
 &ltPostField1>StudentId&lt/PostField1>
 &ltPostField2>StudentName&lt/PostField2>
 &ltPostField3>School Code&lt/PostField3>
 &ltPostField4>FLEXIPAY&lt/PostField4>
 &ltPostField5>Payment Date&lt/PostField5>
 &ltPostField7>Amount&lt/PostField7>
 &ltPostField8>CASH&lt/PostField8>
 &ltPostField9>VendorCode&lt/PostField9>
 &ltPostField10>Password&lt/PostField10>
 &ltPostField11>Customer Tel&lt/PostField11>
 &ltPostField12>0&lt/PostField12>
 &ltPostField14>StudentName&lt/PostField14>
 &ltPostField15>0&lt/PostField15>
 &ltPostField16>Digital Signature&lt/PostField16>
 &ltPostField18>narration&lt/PostField18>
 &ltPostField20>VendorTranId&lt/PostField20>
 &lt/trans>
 &lt/PrepaidVendorPostTransaction>
&lt/s:Body>
&lt/s:Envelope>
   
 </code>
 </pre>
                                </dd>
                            </dl>
                            <dl>
                                <dt>3. AIRTIME</dt>
                                <dd>
                                    <pre>
                 <code>
 &ltsoap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
 &ltsoap:Body>
 &ltPrepaidVendorPostTransaction xmlns="http://PegPayPaymentsApi/">
 &lttrans>
 &ltPostField1>CustomerRef&lt/PostField1>
 &ltPostField2>CustomerName&lt/PostField2>
 &ltPostField3> &lt/PostField3>
 &ltPostField4>AIRTIME&lt/PostField4>
 &ltPostField5>PaymentDate&lt/PostField5>
 &ltPostField6>2&lt/PostField6>
 &ltPostField7>Amount&lt/PostField7>
 &ltPostField8>CASH&lt/PostField8>
 &ltPostField9>VendorCode&lt/PostField9>
 &ltPostField10>Password&lt/PostField10>
 &ltPostField11>CustomerTel&lt/PostField11>
 &ltPostField12>0&lt/PostField12>
 &ltPostField13>&lt/PostField13>
 &ltPostField14>Teller&lt/PostField14>
 &ltPostField15>0&lt/PostField15>
 &ltPostField16>Digital Signature&lt/PostField16>
 &ltPostField17>&lt/PostField17>
 &ltPostField18>&lt/PostField18>
 &ltPostField19>&lt/PostField19>
 &ltPostField20>VendorTranId&lt/PostField20>
 &ltPostField21>CustomerType&lt/PostField21>
 &lt/trans>
 &lt/PrepaidVendorPostTransaction>
 &lt/soap:Body>
 &lt/soap:Envelope>

</code>
 </pre>
                                </dd>
                            </dl>
                            <dl>
                                <dt>4.  DATA</dt>
                                <dd>
                                    <pre>
                             <code>
 &ltsoap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
 &ltsoap:Body>
 &ltPrepaidVendorPostTransaction xmlns="http://PegPayPaymentsApi/">
 &lttrans>
 &ltPostField1 />
 &ltPostField2>Customer Nam &lt/PostField2>
 &ltPostField3>Bundle Code &lt/PostField3>
 &ltPostField4>Utility Code &lt/PostField4>
 &ltPostField5>paymentDate &lt/PostField5>
 &ltPostField6 />
 &ltPostField7>TranAmount &lt/PostField7>
 &ltPostField8> &lt/PostField8>
 &ltPostField9>vendorCode &lt/PostField9>
 &ltPostField10>Password &lt/PostField10>
 &ltPostField11>Customer Tel &lt/PostField11>
 &ltPostField12>0 &lt/PostField12>
 &ltPostField14>Vendorcode &lt/PostField14>
 &ltPostField15>0 &lt/PostField15>
 &ltPostField16>DataSignature &lt/PostField16>
 &ltPostField18>Narration &lt/PostField18>
 &ltPostField20>VendortranId &lt/PostField20>
 &lt/trans>
 &lt/PrepaidVendorPostTransaction>
 &lt/soap:Body>
 &lt/soap:Envelope>
 </code>
 </pre>
                                </dd>
                            </dl>
                        </div>
                    </section>
                </asp:View>

                <asp:View ID="View4" runat="server">
                    <section id="Payout">
                        <div class="styleup">
                            <h3>DATA DICTIONARY </h3>
                            <p>In this section, we describe the fields in the PegPay API with the following parameters</p>
                            <ol>
                                <li>Field Name (FN)</li>
                                <li>Description (Desc)</li>
                                <li>Type (Type)</li>
                                <li>Constraints(Const)</li>
                                <li>Applicable Utility (AU)</li>
                            </ol>

                            <dl>
                                <dt>FN: CustomerRef/ CustRef </dt>
                                <dd>Desc: The reference number of the Company/Utility Customer<br />
                                    Type: string
                                    <br />
                                    Const: 3 to max characters
                                    <br />
                                    AU: ALL
                                </dd>
                                <dt>FN: CustomerName </dt>
                                <dd>Desc: : The name of the Company/Utility’s customer<br />
                                    Type: string
                                    <br />
                                    Const:: 1 to 100 characters<br />
                                    AU: ALL
                                </dd>
                                <dt>FN: OutstandingBalance </dt>
                                <dd>Desc: The reference number of the Company/Utility Customer<br />
                                    Type: big integer
                                    <br />
                                    Const:  big integer
                                    <br />
                                    AU: Water and Electricity
                                </dd>
                                <dt>FN:  VendorCode </dt>
                                <dd>Desc: The code supplied to the agent by PegPay to be used to identify them in the
PegPay system.
                                    <br />
                                    Type: big integer
                                    <br />
                                    Const: 4 characters
                                    <br />
                                    AU: ALL
                                </dd>

                                <dt>FN: PaymentDate </dt>
                                <dd>Desc: The date when a transaction was made.
                                    <br />
                                    Type: string<br />
                                    Const: dd/mm/yyyy
                                    <br />
                                    AU: ALL
                                </dd>
                                <dt>FN:Transaction Amount </dt>
                                <dd>Desc: The amount of money received from the customer

                                    <br />
                                    Type: big integer<br />
                                    Const: 1 to 999,999,999
                                    <br />
                                    AU: ALL
                                </dd>

                                <dt>FN:VendorTransactionID </dt>
                                <dd>Desc:The transaction reference from the agent’ssystem.
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 30 characters<br />
                                    AU: ALL
                                </dd>
                                <dt>FN: CustomerTel </dt>
                                <dd>Desc:The phone number of the customer/ person who has made the payment..
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 25 characters<br />
                                    AU: ALL
                                </dd>

                                <dt>FN:  Narration </dt>
                                <dd>Desc:This is a narrative that the agent wishes to relay back to the utility e.g. incase a cheque 
bounced, the vendor might want to accompany the posting of the bounced cheque with a 
narrative about it
                                    <br />
                                    Type: string<br />
                                    Const: 1 to max characters<br />
                                    AU: ALL
                                </dd>


                                <dt>FN: StatusCode </dt>
                                <dd>Desc:A code that is returned after every request from PegPay indicating the status of the 
transaction. The list of status codes and their descriptions are given in the status codes table 
below
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 3 characters<br />
                                    AU: ALL
                                </dd>
                                <dt>FN: StatusDescription </dt>
                                <dd>Desc:This is the description of the status code returned by the system. In the event there is an 
error returned during validation or posting, the description of the error will be passed through 
this field. A list of the descriptions is provided for in the status codes table
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 200 characters<br />
                                    AU: ALL
                                </dd>
                                <dt>FN: Password </dt>
                                <dd>Desc:: This password will be used together with the vendor code to authenticate every transaction 
on the interface
                                    <br />
                                    Type: alphanumeric string<br />
                                    Const: 1 to 3 characters<br />
                                    AU: ALL
                                </dd>
                                <dt>FN: TranIdToReverse </dt>
                                <dd>Desc: When a transaction is a reversal, the ID being reversed is passed in this field. This is the
VendorTranId of the transaction being reversed

                                    <br />
                                    Type: string<br />
                                    Const: 1 to 30 characters<br />
                                    AU: ALL
                                </dd>
                                <dt>FN:PaymentType </dt>
                                <dd>Desc:This is the type of transaction(payment) being made by the customer. A list of these 
transactions is provided for in the <span id='paymrnttype'>payment types table</span>
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 100 characters<br />
                                    AU: ALL
                                </dd>
                                <dt>FN: CustomerType </dt>
                                <dd>Desc:The type of customer making the payment. They can either be POSTPAID or PREPAID 
customers for (Electricity). The customer types and their codes are stated in this table.
                                    <br />
                                    Type: string<br />
                                    Const: 1<br />
                                    AU: KCCA/UMEME

                                </dd>
                                <dt>FN: Reversal </dt>
                                <dd>Desc: A flag that indicates whether the transaction being posted is a reversal or not. The code is 
1 if it’s a reversal or 0 if it’s a normal credit transaction.

                                    <br />
                                    Type: string<br />
                                    Const: 1
                                    <br />
                                    AU: ALL
                                </dd>
                                <dt>FN: Teller </dt>
                                <dd>Desc:This field is passed by the bank indicating the name or id of the teller who handled the
transaction
                                    <br />
                                    Type: string<br />
                                    Const: 1 to max characters<br />
                                    AU: ALL
                                </dd>
                                <dt>FN:  ReceiptNumber </dt>
                                <dd>Desc: the receipt number issued by the company/utility in the event a transaction issuccessfully 
posted into the utility’s payment platform through the PegPay Interface.
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 30 characters<br />
                                    AU: Electricity
                                </dd>
                                <dt>FN: PegpayQueryId </dt>
                                <dd>Desc:The reference number of a transaction or a query from the PegPay system
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 30 characters<br />
                                    AU: ALL
                                </dd>
                                <dt>FN: DigitalSignature </dt>
                                <dd>Desc: The data being posted to the PegPay System has to be digitally signed by the agent to 
ensure that the data is coming from whoever the agent claims to be.
                                    <br />
                                    Type: string<br />
                                    Const: Base64String
                                    <br />
                                    AU: ALL
                                </dd>
                                <dt>FN:  Offline </dt>
                                <dd>Desc: A flag that indicates whether the transaction being posted was made in offline mode or 
not. The code is 1 if it’s an offline transaction or 0 if it’s not.
                                    <br />
                                    Type: string<br />
                                    Const: 1
                                    <br />
                                    AU: ALL
                                </dd>
                                <dt>FN: PayAccount </dt>
                                <dd>Desc:a prepaid token field that indicates how much of the account arrears are to be deducted 
off the token payment
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 15 characters<br />
                                    AU: Electricity
                                </dd>
                                <dt>FN: DebtRecovery </dt>
                                <dd>Desc: This is a prepaid token field that indicates how much of the (Electricity) debt accrued is to 
be deducted off the token payment.
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 15 characters<br />
                                    AU: Electricity
                                </dd>
                                <dt>FN: MeterNumber </dt>
                                <dd>Desc: This isthe meter number for which a token payment is being made
                                    <br />
                                    Type: string<br />
                                    Const: 11 characters<br />
                                    AU: Electricity
                                </dd>
                                <dt>FN: Units </dt>
                                <dd>Desc:A prepaid token field that indicates how many units of power the customer will get from 
the prepaid meter payment he has made.
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 15 characters<br />
                                    AU: UMEME
                                </dd>
                                <dt>FN: TokenValue </dt>
                                <dd>Desc: A prepaid token field that indicates how much the value of the token is in the currency
used to purchase the token
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 15 characters<br />
                                    AU: Electricity
                                </dd>
                                <dt>FN: Inflation </dt>
                                <dd>Desc:This is a prepaid token field that indicates how much of the payment amount has been
deducted or added due to inflation
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 15 characters<br />
                                    AU: Electricity
                                </dd>
                                <dt>FN: Tax </dt>
                                <dd>Desc: A prepaid token field that indicates how much of the payment amount has been deducted
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 15 characters<br />
                                    AU: Electricity
                                </dd>

                                <dt>FN: Fx </dt>
                                <dd>Desc:A prepaid token field that indicates how much of the payment amount has been deducted 
or added due to foreign exchange
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 15 characters<br />
                                    AU: Electricity
                                </dd>
                                <dt>FN: Fuel </dt>
                                <dd>Desc:A prepaid token field that indicates how much of the payment amount has been deducted 
or added due to fuel

                                    <br />
                                    Type: string<br />
                                    Const: 1 to 15 characters<br />
                                    AU: Electricity
                                </dd>
                                <dt>FN: TotalAmount </dt>
                                <dd>Desc:: A prepaid token field that indicates total value of the prepayment token inclusive of all 
deductions
                                    <br />
                                    Type: string<br />
                                    Const: 1 to 15 characters<br />
                                    AU: Electricity
                                </dd>
                                <dt>FN: PrepaidToken </dt>
                                <dd>Desc: A prepaid token field that contains the actual token purchased

                                    <br />
                                    Type: string<br />
                                    Const:20 characters<br />
                                    AU: Electricity
                                </dd>
                                <dt>FN: Area </dt>
                                <dd>Desc:The area to which the (Water) customer belongs. It has to be supplied when querying for 
customer details and also when making water payments. A list of the applicable areas is given in 
here.
                                    <br />
                                    Type: string<br />
                                    Const: 30 characters<br />
                                    AU: Water
                                </dd>
                                <dt>FN: UtilityCode </dt>
                                <dd>Desc: The code that identifies the company/utility in the PegPay system for which a payment is 
being made
                                    <br />
                                    Type: string<br />
                                    Const: 10 characters<br />
                                    AU: ALL
                                </dd>
                                <dt>FN: TIN </dt>
                                <dd>Desc: The Tax Identification Number for the paying customer
                                    <br />
                                    Type: string<br />
                                    Const: 15 characters<br />
                                    AU:ALL
                                </dd>
                            </dl>
                        </div>
                    </section>

                    <br />
                </asp:View>
                <asp:View ID="View5" runat="server">
                    <section id="Parameters">
                        <div class="styleup">
                            <h3>FIELD MAPPING</h3>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Query Request</th>
                                        <th>Fields Populated</th>
                                        <th>Applicable Company</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>CustomerReference</td>
                                        <td>QueryField1</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>Area/Tin</td>
                                        <td>QueryField2</td>
                                        <td>Water(NWSC)</td>
                                    </tr>
                                    <tr>
                                        <td>UtilityCode</td>
                                        <td>QueryField4</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>VendorCode</td>
                                        <td>QueryField5</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>Password</td>
                                        <td>QueryField6</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField1</td>
                                        <td>QueryField7</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField2</td>
                                        <td>QueryField8</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField3</td>
                                        <td>QueryField9</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField4</td>
                                        <td>QueryField10</td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>

                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Response</th>
                                        <th>Fields Populated</th>
                                        <th>Applicable Company</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>CustomerReference</td>
                                        <td>ResponseField1</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>CustomerName</td>
                                        <td>ResponseField2</td>
                                        <td>(Electricity & Water), GOTV,DSTV</td>
                                    </tr>
                                    <tr>
                                        <td>Area/TIN</td>
                                        <td>ResponseField3</td>
                                        <td>(Water)</td>
                                    </tr>
                                    <tr>
                                        <td>OustandingBalance</td>
                                        <td>ResponseField4</td>
                                        <td>(Electricity & Water), GOTV</td>
                                    </tr>
                                    <tr>
                                        <td>CustomerType</td>
                                        <td>ResponseField5</td>
                                        <td>(Electricity), GOTV,DSTV</td>
                                    </tr>
                                    <tr>
                                        <td>StatusCode</td>
                                        <td>ResponseField6</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>StatusDescription</td>
                                        <td>ResponseField7</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>PegPayTranId</td>
                                        <td>ResponseField8</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>CompanyPaymentReference</td>
                                        <td>ResponseField9</td>
                                        <td>(Electricity)</td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField1</td>
                                        <td>ResponseField10</td>
                                        <td>GOTV,DSTV</td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField2</td>
                                        <td>ResponseField11</td>
                                        <td>GOTV,DSTV</td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField3</td>
                                        <td>ResponseField12</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField4</td>
                                        <td>ResponseField13</td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>

                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>TransactionRequest</th>
                                        <th>Fields Populated</th>
                                        <th>Applicable Company</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Custref</td>
                                        <td>PostField1</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>Custname</td>
                                        <td>PostField2</td>
                                        <td>(Electricity & Water)</td>
                                    </tr>
                                    <tr>
                                        <td>Area/TIN</td>
                                        <td>PostField3</td>
                                        <td>(Water)</td>
                                    </tr>
                                    <tr>
                                        <td>UtilityCode</td>
                                        <td>PostField4</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>CustomerTel</td>
                                        <td>PostField11</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>Email</td>
                                        <td>PostField19</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>CustomerType</td>
                                        <td>PostField21</td>
                                        <td>(Electricity), GOTV,DSTV</td>
                                    </tr>
                                    <tr>
                                        <td>ChequeNumber</td>
                                        <td>PostField17</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>TransactionType</td>
                                        <td>PostField8</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>PaymentType</td>
                                        <td>PostField6</td>
                                        <td>(Electricity)</td>
                                    </tr>
                                    <tr>
                                        <td>TransactionAmount</td>
                                        <td>PostField7</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>PaymentDate</td>
                                        <td>PostField5</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>VendorTransactionID</td>
                                        <td>PostField20</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>DigitalSignature</td>
                                        <td>PostField16</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>VendorCode</td>
                                        <td>PostField9</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>Password</td>
                                        <td>PostField10</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>Narration</td>
                                        <td>PostField18</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>Teller</td>
                                        <td>PostField14</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>Reversal</td>
                                        <td>PostField12</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>TranIdToReverse</td>
                                        <td>PostField13</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>Offline</td>
                                        <td>PostField15</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>DigitalSignature</td>
                                        <td>PostField16</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>ChequeNumber</td>
                                        <td>PostField17</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>Narration/Reason</td>
                                        <td>PostField18</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>Email</td>
                                        <td>PostField19</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>VendorTransactionRef/ReversalTransactionId</td>
                                        <td>PostField20</td>
                                        <td>ALL/PREPAID VENDORS</td>
                                    </tr>
                                    <tr>
                                        <td>CustomerType</td>
                                        <td>PostField21</td>
                                        <td>ALL</td>
                                    </tr>
                                    <tr>
                                        <td>BranchCode</td>
                                        <td>PostField23</td>
                                        <td>URA</td>
                                    </tr>
                                    <tr>
                                        <td>BankCode</td>
                                        <td>PostField24</td>
                                        <td>URA</td>
                                    </tr>
                                    <tr>
                                        <td>Status</td>
                                        <td>PostField25</td>
                                        <td>URA</td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField1</td>
                                        <td>PostField30</td>
                                        <td>GOTV,DSTV</td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField2</td>
                                        <td>PostField31</td>
                                        <td>GOTV,DSTV</td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField3</td>
                                        <td>PostField32</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField4</td>
                                        <td>PostField33</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField5</td>
                                        <td>PostField34</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>ReserveField6</td>
                                        <td>PostField22</td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>


                            <%--<img src="../images2/fieldmap.jpg" />
                            <img src="../images2/feildmap2.jpg" />--%>
                            <h3>CODES</h3>
                            <h5>Status codes</h5>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Status Code</th>
                                        <th>Status Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>0</td>
                                        <td>SUCCESS</td>
                                    </tr>
                                    <tr>
                                        <td>1/100/200</td>
                                        <td>Area (NWSC)/BouquetCode(DSTV).etc.</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>INVALID PEGPAY VENDOR CREDENTIALS</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>INVALID TRANSACTION AMOUNT</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>INVALID PAYMENT DATE</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>INVALID TRANSACTION TYPE</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>INVALID CUSTOMER TELEPHONE</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>INVALID PAYMENT TYPE</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>TELLER DETAILS REQUIRED</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>TRANSACTION DETAILS ALREADY RECEIVED</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>GENERAL ERROR AT Utilit</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>VENDOR CREDENTIALS HAVE BEEN DEACTIVATED.PLEASE CONTACT PEGASUS TECHNOLOGIES</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>INVALID PHONE NUMBER</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>CUSTOMER NAME NOT SUPPLIED</td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>TRANSACTION TYPE NOT SUPPLIED. EG CASH,EFT</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>PAYMENT TYPE NOT SUPPLIED. EG 2,3,4</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>VENDOR TRANSACTION REFERENCE NOT SUPPLIED</td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>TELLER DETAILS NOT SUPPLIED</td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>SIGNATURE NOT VALID AT PEGPAY</td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>SIGNATURE NOT PROVIDED</td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>DUPLICATE VENDOR REFERENCE AT PEGPAY</td>
                                    </tr>
                                    <tr>
                                        <td>21</td>
                                        <td>SUSPECTED DOUBLE POSTING AT PEGPAY</td>
                                    </tr>
                                    <tr>
                                        <td>22</td>
                                        <td>ORIGINAL VENDOR TRANSACTION REFERENCE NOT SUPPLIED</td>
                                    </tr>
                                    <tr>
                                        <td>23</td>
                                        <td>TRANSACTION NARATION IS REQUIRED</td>
                                    </tr>
                                    <tr>
                                        <td>24</td>
                                        <td>INVALID ORIGINAL VENDOR TRANSACTIONREFERENCE</td>
                                    </tr>
                                    <tr>
                                        <td>25</td>
                                        <td>INVALID TRANSACTION REVERSAL STATUS SUPPLIED. EG 0 or 1</td>
                                    </tr>
                                    <tr>
                                        <td>26</td>
                                        <td>AMOUNT TO REVERSE DOES NOT MATCH WITH AMOUNT REVERSING</td>
                                    </tr>
                                    <tr>
                                        <td>27</td>
                                        <td>INVALID PAYMENT CODE</td>
                                    </tr>
                                    <tr>
                                        <td>28</td>
                                        <td>INVALID CUSTOMER TYPE EG POSTPAID or PREPAID</td>
                                    </tr>
                                    <tr>
                                        <td>29</td>
                                        <td>UTILITY CREDENTIALS NOT SET</td>
                                    </tr>
                                    <tr>
                                        <td>30</td>
                                        <td>UNABLE TO CONNECT TO UTILITY</td>
                                    </tr>
                                    <tr>
                                        <td>31</td>
                                        <td>PEGPAY DB UNAVAILABLE</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td> GENERAL ERROR AT PEGPAY</td>
                                    </tr>
                                    <tr>
                                        <td>33</td>
                                        <td>TRANSACTIONDOESN'T EXIST IN PEGPAY</td>
                                    </tr>
                                    <tr>
                                        <td>34</td>
                                        <td>INVALID TIN</td>
                                    </tr>
                                    <tr>
                                        <td>35</td>
                                        <td>PLEASE SUPPLY AN AREA FOR (Water) PAYMENTS</td>
                                    </tr>
                                    <tr>
                                        <td>41</td>
                                        <td>INSUFFICIENT VENDOR ACCOUNT BALANCE</td>
                                    </tr>
                                    <tr>
                                        <td>101</td>
                                        <td>GENERAL ERROR AT PEGPAY</td>
                                    </tr>
                                    <tr>
                                        <td>100</td>
                                        <td>
                                            UNKNOWN URA PAYMENT TYPE<br/>
                                            NVALID BOUQUET FOR DSTV<br/>
                                            INVALID UTILITY REFERENCE NUMBER<br/>
                                            FAILED TO GET BOUQUET DETAILS<br/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <%--<img src="../images2/codes1.jpg" />
                            <img src="../images2/codes3.jpg" />--%>
                            <br />
                            <strong>Due to an enormous number of status descriptions under the code 100, It is set forth here 
that the status code 100 always implies a failure usually to find requested data.
                            </strong>


                            <h3>UTILITY CODES AND TYPES</h3>

                            <ol>
                                <li>Electricity Payment types
                                    <br />
                                    <img src="../images2/electypes.jpg" />
                                </li>
                                <li>Electricity Customer types
                                    <br />
                                    <img src="../images2/eleccust.jpg" />
                                </li>
                                <li>(DSTV) Customer types
                                    <br />
                                    <img src="../images2/dstvtypes.jpg" />
                                </li>
                                <li>Utility codes
                                    <br />
                                    <img src="../images2/utilitycode.jpg" />
                                </li>
                                <li>
                                    <dl>
                                        <dt>Areas for NWSC</dt>
                                        <dd>Kampala</dd>
                                        <dd>Entebbe</dd>
                                        <dd>Jinja</dd>
                                        <dd>Mukono</dd>
                                        <dd>Iganga</dd>
                                        <dd>Lugazi</dd>
                                        <dd>Kawuku</dd>
                                        <dd>Kajjansi</dd>
                                        <dd>Others</dd>
                                    </dl>
                                </li>

                            </ol>

                        </div>
                    </section>
                </asp:View>

                <asp:View ID="View6" runat="server">
                    <section>
                        <div class="styleup">
                            <h3>SECURITY REQUIREMENTS</h3>
                            <p>
                                The PegPayAPI Payments Platform will have four levels of security:

                            </p>
                            <h4>Authentication/Authorization </h4>
                            <p>
                                Every request and transaction performed on the system will be authenticated using 
username (VendorCode) and a Password to ensure that the requestor of the service 
is authorized to perform transactions on the service and ask for the request from 
the service
                            </p>
                            <p>
                                This username and password will also be used to authenticate users of the system. This will 
ensure that only authorized requests and transactions are processed by the interface.
                            </p>
                            <strong>If for any reason the username and/or password assigned to the vendor are entered incorrectly 
more than three times, the vendor’s account to the platform will be deactivated and the vendor 
will have to contact Pegasus Technologies to have it reactivated.

                            </strong>
                            <h4>Data Integrity</h4>
                            <p>
                                Communication between the PegPay API and its several clients will be performed over Secure 
Sockets Layer (SSL) using 128-bit encryption. This will ensure that data transmitted to and from 
the interface will be encrypted
                            </p>
                            <p>
                                The onus will be on the client of the interface to ensure that it can handle and manipulate 
certificates issued by Pegasus Technologies
                            </p>
                            <h4>Digital Signatures </h4>
                            <p>
                                Data transmitted for posting is digitally signed and the digital signature from the agent 
validated by the PegPay API before this request for posting is processed. In the event the 
signature is invalid, the data will be rejected by the interface as it will most likely have come 
from an imposter of the agent. This will ensure that only data from authorized agents is 
processed by the PegPay Platform
                            </p>

                            <h4>IP Whitelisting </h4>
                            <p>
                                On production, all data processed by the PegPay API platform will only be processed 
when its coming from IPs of known agents that have been whitelisted. Data from 
other unknown IPs will be rejected by PegPay
                            </p>

                        </div>
                    </section>
                </asp:View>


                <asp:View ID="View7" runat="server">
                    <section class="accountBalance">
                        <div class="styleup">
                            <h3>OTHER REQUIREMENTS</h3>

                            <h4>Digital Signatures </h4>
                            <p>
                                All transactions posted to the PegPay Payments Platform have to be digitally signed 
and the digital signature is posted as one of the parameters when posting a
successful transaction. The purpose of the digital signature is to ensure that the 
transactions are received from agents who claim to be who they are
                            </p>
                            <br />
                            <p>
                                When signing the data, the agent will combine the following fields as indicated 
below, sign them and pass the digital signature as one of the parameters when 
posting the transaction. Before granting credentials to the PegPay system, vendors 
will have to issue Pegasus Technologies with a public certificate (.cer) with which all 
digital signatures will be verified.
                            </p>
                            <br />
                            <p>
                                When signing the data, the agent will combine the following fields as indicated 
below, sign them and pass the digital signature as one of the parameters when 
posting the transaction. <strong>dataToSign (CustRef + CustName + CustomerTel + VendorTransactionID + VendorCode + Password + PaymentDate + Teller +TransactionAmount + Narration + TransactionType;) OR literally
(PostField1 + PostField2 + PostField11 + PostField20 + PostField9 + PostField10 + 
PostField5 + PostField14 + PostField7 + PostField18 + PostField8)
</strong>
                            </p>
                            <br />
                            <p>
                                To sign the data, the vendor will have to use a combination of SHA1 and RSA to generate the 
digital signature. Steps for signing the data are described below.
                            </p>
                            <ul>
                                <li>Compute sha1 hash of concatenated string </li>
                                <li>Use RSA to encrypt hash with private Key </li>
                                <li>Convert encrypted text into base64 string The base 64 string is the digital 
signature</li>

                            </ul>
                            <h4>Non-functional requirements</h4>
                            <dl>
                                <dt>Location of the Test Environment</dt>
                                <dd>The PegPay Payments API is a SOAP XML web service that will be shared with the vendor 
one creation</dd>
                                <dd>The URL is wrapped round SSL and the service will issue an SSL certificate that will be usedby the 
client to encrypt all communication between the client and the service </dd>
                                <dt>Sample Test Accounts  </dt>

                                <dd>
                                    <h5>NWSC</h5>
                                    <p>CustomerRef – 11111, Area – Kampala</p>
                                </dd>

                                <dd>
                                    <h5>UMEME</h5>
                                    <h6>Prepaid</h6>
                                    <p>CustomerRef – 04237341583</p>
                                    <h6>Post Paid</h6>
                                    <p>CustomerRef – 201959568 </p>

                                </dd>
                                <dd>
                                    <h5>DSTV</h5>
                                    <p>CustomerRef – 4261353579 BouquetCode – PREW4</p>
                                </dd>
                                <dd>
                                    <h5>GOTV</h5>
                                    <p>CustomerRef - 2009458460 BouquetCode - GOTVPLS</p>
                                </dd>
                                <dd>
                                    <h5>URA</h5>
                                    <p>UAL001F </p>
                                </dd>
                                <dd>
                                    <h5>KCCA</h5>
                                    <p>UAT500B</p>
                                </dd>

                            </dl>
                        </div>
                    </section>
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
</asp:Content>
