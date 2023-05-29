<%@ Page Title="Mobile Money Documentation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MobileMoney.aspx.cs" Inherits="PegpayDocumentation.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="margin-bottom: 30px;">
        <div class="col-md-4 mt-5" style="background-color: #ebeef5; margin-top: 20px; height: 100%; position: fixed; z-index: 1; top: 0; left: 0; padding-top: 20px; width: 300px;">
            <ul>
                <li class="bd-links-group py-2 list-unstyled">
                    <h2><strong class="bd-links-heading d-flex w-100 align-items-center fw-semibold rounded active">Get Started
                    </strong></h2>

                    <ul class="list-unstyled fw-normal pb-2 small">

                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton0" runat="server" class="bd-links-link d-inline-block rounded" OnClick="LinkButton0_Click">Introduction</asp:LinkButton></li>

                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton1" runat="server" class="bd-links-link d-inline-block rounded" OnClick="LinkButton1_Click">Integration Steps And Sandbox</asp:LinkButton></li>

                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton2" runat="server" class="bd-links-link d-inline-block rounded" OnClick="LinkButton2_Click">Api Functions</asp:LinkButton></li>

                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton3" runat="server" class="bd-links-link d-inline-block rounded" OnClick="LinkButton3_Click">PayIn</asp:LinkButton></li>

                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton4" runat="server" class="bd-links-link d-inline-block rounded" OnClick="LinkButton4_Click">Payout </asp:LinkButton></li>
                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton5" runat="server" class="bd-links-link d-inline-block rounded" OnClick="LinkButton5_Click">Request Parameters</asp:LinkButton></li>

                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton6" runat="server" class="bd-links-link d-inline-block rounded" OnClick="LinkButton6_Click">Get Transaction Details</asp:LinkButton></li>
                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton7" runat="server" class="bd-links-link d-inline-block rounded" OnClick="LinkButton7_Click">Get Account Balance</asp:LinkButton></li>
                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton8" class="bd-links-link d-inline-block rounded" runat="server" OnClick="LinkButton8_Click">Digital Signatures</asp:LinkButton></li>
                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton9" class="bd-links-link d-inline-block rounded" runat="server" OnClick="LinkButton9_Click">Security Requirements</asp:LinkButton></li>
                        <li class="sidebarList">
                            <asp:LinkButton ID="LinkButton10" class="bd-links-link d-inline-block rounded" runat="server" OnClick="LinkButton10_Click">Status Codes and Description</asp:LinkButton></li>

                    </ul>
                </li>
            </ul>
        </div>
        <div class="col-md-8" style="margin-left: 300px;">
            <asp:MultiView runat="server" ActiveViewIndex="0" ID="MainContent">
                <asp:View runat="server" ID="view1">

                    <section>
                        <div class="styleup">
                            <h3 id="intro">Introduction</h3>
                            <p>
                                Pegasus Technologies Ltd is a Payments’ Aggregator/Integrator company with existing relationships with Banks and Mobile Money Service Providers through which customers can settle their payments. Pegasus Technologies also has existing relationships with a number of
         service providers who would like to have paymentsfor their services settled using the PegPay Payments and Collections Platform that acts as an interface between service providers and payments’ handlers.
                            </p>

                            <h3>Purpose.</h3>
                            <p>
                                Pegasus Technologies provides an interface to all partner telecom and bank e-wallet systems
   through which partner agents of Pegasus Technologies are able to have transactions processed
   through the telecom and Bank e-wallet systems. Currently the supported services are MTN
   Mobile Money, Airtel Money and all the Banks licensed by Bank of Uganda (B.O.U).
                            </p>
                            <p>
                                This technical document is therefore intended for system developers who intend to carry out
integration with the PegPay Payments and Collections platform. It describes the message types
that the PegPay system expects and the responses returned from the system.
                            </p>
                            <p>
                                Pegasus Technologies has extensive experience and expertise in third-party system integrations
and will provide technical guidance during the integration process if the client requests it.
                            </p>
                        </div>
                    </section>
                </asp:View>
                <asp:View runat="server" ID="view2">
                    <section>
                        <div class="styleup">
                            <h3 id="Integration">INTEGRATION STEPS AND SANDBOX</h3>
                            <p>Getting from code to the live environment is a simple, three step process.</p>
                            <img src="Images2/image1.jpg" alt="" />
                            <p>
                                First, you are going to need a safe place to test your code. The PegPay Payments and Collections
platform offers a robust sandbox that simplifies the testing and certification process.
                            </p>

                            <p>
                                The sandbox allows you to send API requests and view the responses in real time. The sandbox also comes equipped with a test simulator that allows you to create an assortment of test cases, which will
ensure you are able to test against a wide variety of scenarios.
                            </p>
                            <h3>Get Your VendorCredentials</h3>
                            Before you can begin submitting API requests you will need your developer credentials and a
test sandbox. As part of the process of registering vendors for access on the platform, the
vendor will be required to provide a public key (in a .cer or .crt) format to Pegasus. 
 <p>
     This is
required to set up a profile for the vendor on PegPay Payments And Collections API and will
be used when verifying the digital signatures for all requests made to the system. Pegasus will need the following data from the vendor to create a sandbox:
                            </p>
                            <p>
                                The email address to receive credentials
 The name the vendor would like created in the platform
 A public key (in a .cer or .crt) format to be used in verifying the digital signatures for all
requests made to the system

Your developer credentials consists of three pieces of information:

The vendorcode (this is akin to a username). 
The password of the vendor on the PegPay Payments And Collections
                            </p>
                            <h3>Develop Your Application in Our Sandbox</h3>
                            In order to make calls against the sandbox you will need to incorporate your developer credentials
into your app.
                            <h3>Certify Your Application</h3>
                            <p>Once you have developed and tested your app and are ready to go live, you will need to get certified by Pegasus. </p>
                            <p>You cannot go live with your application until our technical team has certified your app and you receive your letter of certification.</p>
                            <p>This process of certification requires the vendor to carry out a series of tests defined by Pegasus in order to ensure correct usage of the APIs correctly and that you are obtaining valid results. </p>
                            <p>Once you get certified, you will be given production credentials that will replace the testing credentials you previously had.</p>

                            <h4>Location of the Test Environment:</h4>

                            <p>The PegPay Web test environment will be located at the following URL:</p>
                            https://test.pegasus.co.ug:9777/livepegasusaggregation/PegPayPaymentsApilV1/
                            <p>
                                The above URL is wrapped round SSL and the service will issue an SSL certificate that will be
used by the client to encrypt all communication between the client and the service. 
The above URL is for the test platform of Pegasus.
                            </p>
                        </div>
                    </section>
                </asp:View>


                <asp:View runat="server" ID="view3">
                    <section>
                        <div class="styleup">

                            <h3 id="ApiFunctions">API FUNCTIONS</h3>
                            <h4>Phone / Bank Account Validation</h4>
                            <p>
                                This functionality is used by the agent to get the details of a phone number/Bank Account of an
intended recipient of funds to ensure that they are the right people to receive these funds. Phone Number validation requires that client/customer passes PhoneNumber and a TelecomCode
separated by a comma e.g. “256776843303,MTN” in the Phone Number tag as seen in the request
below.
                            </p>
                            <h4>Sample Request (Telecom)</h4>
                            <pre>
<code style="white-space:pre-wrap">
    {
       "Method": "ValidatePhoneNumber",
       "PhoneNumber": "256702685176,AIRTEL",
       "VendorCode": "XXXXX",
       "Password": "XXXXX",
       "Signature":"of51gHxrrmDlGJ88ASmnyNHYohvIO0EEMb/irHaAOiSTBuikEJR4w2JagY
       jEFYxhLmEUU7y6dDA5TAYtLXL8TgkuikzgvledGxRj6IYtcZEl7BNq4D3vTewSSPXKGEkH/
       1gjkyddLc78Q1FIKqYQPoI9noRp1dFothIjE09+2breFA8bb+kbwPhQ1wkKZwecR+mNYekr
       RFFQSyj7zIIdPVRi0d6tVb4wxcE/768D/JxWMwdzTIopFLSaFnw5Xt3cdooFMqaXtZeyVaV
       G1r8x3/k3KI7zZakmp/wCqHQQz8hosiqc/jJK+1/qyjE4vZ0MS7oO6zfyKItzMImFcA+Ciw=="
   }
</code>
    </pre>
                            <h5>Response</h5>
                            <pre>
 <code style="white-space:pre-wrap">
 {
  "Network": "AIRTEL",
  "Name": "TEST CUSTOMER",
  "Telephonenumber": "256702685176",
  "IsRegistered": "ACTIVE",
  "Status": "0",
  "StatusDescription": "SUCCESS"
  }
  </code>
            </pre>
                        </div>
                    </section>
                </asp:View>

                <asp:View runat="server" ID="view4">
                    <section>
                        <div class="styleup">
                            <h3 id="Payin">PayIn</h3>
                            <p>This is a transaction request to debit a phone number account at the telecom i.e (MTN, Airtel).</p>
                            <p>Transaction Flow</p>
                            <img src="Images2/payin.jpg" alt="" />
                            <ol class="">
                                <p class="fw-400">Description</p>
                                <li>The client sends a PostTransaction request to the PegPay Payments and Collections API, with a TranType of ‘PULL’.</li>
                                <li>The PegPay Payments and Collections Platform performs authentication and service level agreement (SLA) control based on fields in the request and immediately sends a MakePayment Request to the Telecom/Bank. </li>
                                <li>The Telecom parses the MakePayment request and sends a response to the PegPay Payments and Collections Platform.</li>
                                <li>The PegPay Payments and Collections API returns a PostTransaction response message to the client with a pending, success or failed response. </li>
                                <li>.The client should only send a GetTransactionDetails request to the PegPay Payments and Collections API to get the status of a pending transaction. If the transaction is still in  state, the client keeps sending the GetTransactionDetails Request to the API until the status changes to success or failed. </li>
                                <li>The PegPay Payments and Collections API returns the GetTransactionDetails response to the client with the current status of the posted transaction. This could be PENDING, SUCCESS or FAILED.</li>
                            </ol>
                        </div>
                    </section>
                </asp:View>

                <asp:View runat="server" ID="view5">
                    <section>
                        <div class="styleup">
                            <h3 id="Payout">Payout </h3>
                            <h5>Overview</h5>
                            <p>This is when the vendor wishes to credit a phone number at the telecom or a bank Account at the bank. </p>
                            <h6>Transaction Flow</h6>
                            <img src="Images2/payout.jpg" alt="" />
                            <p class="fw-400">Description</p>
                            <ol>
                                <li>The client sends a PostTransaction request to the PegPay Payments and Collections API. </li>
                                <li>. . The PegPay Payments and Collections Platform performs authentication and service level agreement (SLA) control based on fields in the request. The PegPay Payments and Collections API returns a PostTransaction Response Message to the client with a PENDING response along with a PegPayId to confirm receipt of the request..</li>

                                <li>The PegPay Payments and Collections Platform sends a MakePayment Request to the Telecom / Bank.</li>
                                <li>The Telecom/Bank parses the MakePayment request and sends a response to the PegPay Payments and Collections platform.</li>
                                <li>The client sends a GetTransactionDetails request to the PegPay Payments and Collections API to get the final status of the posted transaction. This is to check if the transaction status has changed at PegPay. If the transaction is still in pending state, the client keeps sending the GetTransactionDetails request after at least 5 seconds to the API until the status changes to success or failed.</li>

                            </ol>

                        </div>
                    </section>
                </asp:View>
                <asp:View runat="server" ID="view6">
                    <section>
                        <div class="styleup">
                            <h3 id="Parameters">Query String Parameters</h3>
                            <img src="Images2/RequestParams.jpg" alt="" />
                            <h4>AddendumData</h4>
                            <p>These are extra parameters passed in a key value pair format i.e. whitelist:FROMACCOUNT</p>
                            <p>1. Whitelist</p>
                            <p>
                                This extra parameter is useful for instructing the PegPay Payments and Collections API to
only complete a transaction if the number is whitelisted. Possible whitelist check options
are FROMACCOUNT, TOACCOUNT, BOTH
"AddendumData":"whitelist:FROMACCOUNT"
                            </p>

                            <p>Sample Payout</p>
                            <pre>
<code style="white-space:pre-wrap">
  {
"Method": "PostTransaction",
"SessionId":"642527432543",
"Narration": "Credit customer",
"AddendumData":"",
"DigitalSignature": "XXXXXXXXXXXXXXXXXXXXXXXX",
"FromTelecom": "AIRTEL",
"ToTelecom": "AIRTEL",
"PaymentCode": "1",
"VendorCode": "XXXXX",
"Password": "XXXXX",
"PaymentDate": "2022-02-09",
"Telecom": "AIRTEL",
"CustomerRef":"CR04223",
"CustomerName":"Test Customer",
"TranAmount": "500",
"TranCharge": "0",
"VendorTranId": "642527432543",
"ToAccount": "256702685176",
"FromAccount":"256702685176",
"TranType": "PUSH",
"IP": "127.0.0.1"
}
  </code>
</pre>
                            <p>Response </p>

                            <pre>
  <code style="white-space:pre-wrap">
{
"StatusDescription": "PENDING",
"StatusCode": "122"
}
   </code>
         </pre>



                            <p>Sample Payout (Bank Post Request)</p>
                            <pre>
<code style="white-space:pre-wrap">
{
"Method": "PostTransaction",
"SessionId":"642527432543",
"Narration":
"SenderName;SenderAddress;SenderId;SenderContact;SenderCountry;Narratio
n",
"AddendumData":"",
"DigitalSignature": "XXXXXXXXXXXXXXXXXXXXXXXX",
"FromTelecom": "PBU",
"ToTelecom": "PBU",
"PaymentCode": "1",
"VendorCode": "XXXXX",
"Password": "XXXXX",
"PaymentDate": "2022-02-09",
"Telecom": "PBU",
"CustomerRef":"CR04223",
"CustomerName":"Test Customer",
"TranAmount": "5000",
"TranCharge": "0",
"VendorTranId": "T002",
"ToAccount": "3010000007781",
"FromAccount":"3010000007781",
"TranType": "PUSH",
"IP": "127.0.0.1"
}
  </code>
     </pre>
                            <p>Response </p>
                            <pre>
  <code style="white-space:pre-wrap">
{
"StatusDescription": "PENDING",
"StatusCode": "122"
}
   </code>
</pre>

                        </div>
                    </section>
                </asp:View>
                <asp:View runat="server" ID="view7">
                    <section class="transactionDetails">
                        <div class="styleup">
                            <h3>Get Transaction Details</h3>
                            <p>
                                This functionality is used by the agents to get the details of previously posted transactions. It can be used to confirm whether a request was successfully processed in the event of a communication error during processing. It can also be used to carry out auto-reconciliation with the PegPay Payments and 
                            </p>
                            <p>Sample Request</p>
                            <pre>
 <code style=" white-space:pre-wrap">
 {
"Method": "GetTransactionDetails",
"VendorCode": "XXXXX",
"Password": "XXXXX",
"VendorTranId": "0123478"
}

</code></pre>
                            <p>Response</p>

                            <p>This topic provides a success/Pending response example. If a request fails, the PegPay Payments and Collections Platform sends an error response that contains an error code.</p>
                            <p>Example</p>
                            <h4>Pending</h4>
                            <pre>  
<code style="white-space:pre-wrap">
{
"StatusDescription": "PENDING",
"StatusCode": "122"
}
 </code> </pre>
                            <h4>SUCCESS</h4>
                            <pre>
 <code style="white-space:pre-wrap">
 {
"PegpayId": "16489632",
"RecordDate": "11/18/2022 4:01:30 PM",
"VendorTranId": "0123478",
"TranAmount": "500.0000",
"PaymentDate": "9/12/2022 12:00:00 AM",
"VendorCode": "XXXXXX",
"StatusCode": "0",
"StatusDescription": "SUCCESS",
"TelecomPosted": "SUCCESS",
"TelecomID": "8716489632"
}
                 </code>
</pre>
                            <h4>Failure Response</h4>
                            <code style="white-space: pre-wrap">{
"StatusCode": "16",
"StatusDescription": "INVALID TRANSACTION DETAILS"
}
                            </code>


                        </div>
                    </section>

                </asp:View>
                <asp:View runat="server" ID="view8">
                    <section class="accountBalance">
                        <div class="styleup">
                            <h3>Get Account Balance</h3>
                            <p>This functionality is used by the agent to get their current PegPay balance. This is a snapshot balance as the balance keeps on changing with every transaction posted.</p>
                            <h4>Sample GetBalance Request</h4>
                            <pre>
 <code style="white-space:pre-wrap" >
 {
"Method": "GetAccountBalance",
"VendorCode": "XXXXX",
"Password": "XXXXX"
}
  </code>
    </pre>
                            <h4>Response</h4>

                            <pre>
<code style="white-space:pre-wrap" >
{
"Balance": "99488.0000",
"StatusDesc": "SUCCESS",
"StatusCode": "0"
}
        </code>
</pre>
                            <h3>Offline Mode</h3>
                            <div>
                                Communication between Pegasus Technologies and its partner telecoms/banks might from time
to time breakdown either at Pegasus Technologies’ side or the Telecoms’ side or the Banks’ side. In the event this happens business should continue as usual. Agents should be able to capture the
details of the transactions and post these details to the PegPay Payments and Collections API. The PegPay Payments and Collections API will process these transactions in offline mode. When
the link does get reestablished, these transactions can then be pushed through to the telecoms. However, this is only applicable to the PayOut transactions. PayIn transactions can only happen
in real time.
                            </div>

                        </div>
                    </section>
                </asp:View>
                <asp:View runat="server" ID="view9">
                    <section>
                        <div class="styleup">
                            <h3 id="Digital">DIGITAL SIGNATURES</h3>
                            <p>All transactions posted to the PegPay Payments and Collections Platform have to be digitally signed. The purpose of the digital signature is to ensure that the transactions are received from agents who claim to be who they are. The order of the concatenation of the data should be maintained as given below. </p>
                            <strong>PostTransaction: dataToSign (CustomerRef + CustomerName + FromTelecom +ToTelecom + VendorTranId + VendorCode + Password + PaymentDate + TranType + PaymentCode + TranAmount + FromAccount + ToAccount)
                            </strong>
                            <strong>ValidatePhoneNumber: dataToSign (PhoneNumber + VendorCode + Password)
                            </strong>
                            <p>NB. The plus sign only indicates string concatenation and should not be part of resultant string</p>
                            <ol>
                                <p>The following steps should be followed in generating the signature for the methods above:</p>
                                <li>Concatenate the data to sign and convert the string to its ASCII representation</li>
                                <li>Hash the resultant value above using SHA1 and encrypt(sign) the hash using RSA algorithm and your private key</li>
                                <li>Convert the signature toa base64 string</li>

                            </ol>

                            <h5>Sample Code Snippnets for generting Digital signature</h5>
                            <pre>
                 <code class="language-C#" style="white-space:pre-wrap">
 C#
private string GetDigitalSignature(stringdataToSign)
{
string certificate = "test.pfx";
X509Certificate2 cert = new X509Certificate2(certificate, "Passcode", X509KeyStorageFlags.UserKeySet);
RSACryptoServiceProvider rsa =(RSACryptoServiceProvider)cert.PrivateKey;
//Encode the data
ASCIIEncoding encoding = newASCIIEncoding(); byte[] data = encoding.GetBytes(dataToSign);
// Hash the data
SHA1Managed sha1 = newSHA1Managed(); byte[] hash = sha1.ComputeHash(data);
// Sign the hash
byte[]digitalSign=rsa.SignHash(hash,CryptoConfig.MapNameToOID("SHA1")); string strDigSign = Convert.ToBase64String(digitalSign);
return strDigSign;
}
                 </code>
    </pre>
                            <h4>PHP</h4>
                            <pre style="white-space: pre-wrap">
&lt ?php
use phpseclib\Crypt\RSA;
/$dataToPosting = $CustomerRef.$CustomerName.$FromTelecom.$ToTelecom.$VendorTranId.$VendorCode.$Pas sword. $PaymentDate.$TranType.$PaymentCode.$TranAmount.$FromAccount.$ToAccount;
// Data to sign for posting method
$dataToValidate = $FromAccount.$VendorCode.$Password; //Data to sign for validation
$pre = mb_convert_encoding($dataToPosting, "ASCII"); // POSTING
$hash = sha1($pre, true);
$passphrase = '5689h34';
$isvalid = openssl_sign($dataToPosting,$signature,file_get_contents('C:\xampp\htdocs\data\te
st.pem'),OPENSSL_PKCS1_PADDING); // Generate Posting Signature
$DigitalSignature = base64_encode($signature); echo 'Below is the
Digital Signature'.'<br>'; echo $DigitalSignature;
die;
?>       
</pre>

                            <h4>Python</h4>
                            <pre>
<code style="white-space:pre-wrap" class="language-python"> 
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import padding
from cryptography.hazmat.primitives.serialization import pkcs12
import base64

data = "256789587888256789587888123789456FUTURELINK_TEST00C14BD32227/04/2023NoneHello Customer testing 1 2CASH"

def ValidateSignature(data):
    with open('filelocation.pfx', 'rb') as f:


        pfx_data = f.read()
        password = 'XXXXXX'  # Replace with your PFX password
        private_key, cert, additional_certs = pkcs12.load_key_and_certificates(pfx_data, password.encode())

        # Data to sign
   

        # Encode the data as UTF-8 and convert to bytes
        data_bytes = data.encode('utf-8')

        # Sign the data using the private key
        signature_bytes = private_key.sign(
        data_bytes, padding.PKCS1v15(), hashes.SHA1())

        # Encode the signature as base64
        signature_base64 = base64.b64encode(signature_bytes)

        sig  = signature_base64.decode('utf-8')

    return sig

signature  = ValidateSignature(data)
print(signature)
    </code>
    </pre>
                        </div>

                    </section>
                </asp:View>


                <asp:View runat="server" ID="view10">
                    <section>
                        <div class="styleup">
                            <h3 id="security">SECURITY REQUIREMENTS</h3>
                            <p>The PegPay Payments and Collections Platform will have four levels of security:</p>
                            <ul>
                                <li>Authentication/Authorization: Every request and transaction performed on the system
will be authenticated using a username (VendorCode) and a password to ensure that the
requestor of the service is authorized to perform transactions on the service and askfor
the request from the service. This VendorCode and password will also be used to
authenticate users of the system. This will ensure that only authorized requests and
transactions are processed by the interface. <strong>If for any reason the VendorCode and/or
password assigned to the vendor are entered incorrectly more than three times, the
vendor’s account to the interface will be deactivated and the vendor will have to
contact Pegasus to have it reactivated.</strong> </li>
                                <li>Data Integrity: Communication between the interface and its several clients will be
performed over Secure Sockets Layer (SSL) using 128 bit encryption. This will ensure that
data transmitted to and from the interface will be encrypted. The onus will be on the
client of the interface to ensure that it can handle and manipulate certificates issued by
Pegasus.
                                </li>
                                <li>Digital Signatures: Data transmitted for posting is digitally signed and the digital
signature from the agent validated by the Interface before this request for posting is
processed. In the event the signature is invalid, the data will be rejected by the interface as
it will most likely have come from an imposter of the agent. This will ensure that only
data from authorized agents is processed </li>
                                <li>IP Whitelisting: On production, all data processed by PegPay Payments and Collections
Platform will only be processed when it’s coming from IPs of known agents that have
been whitelisted. Data from other unknown IPs will be rejected by the billingin
                                </li>

                            </ul>
                            <h4>WEB PORTAL ACCESS</h4>
                            <p>
                                Vendors who wish to view and download statements of transactions done using the PegPay
Payments and Collections Platform will be given access to a Web Portal from which they can
login, view, download and do reconciliation for all transactions done 
                            </p>
                        </div>
                    </section>
                </asp:View>
                <asp:View runat="server" ID="view11">
                    <section>
                        <div class="styleup">
                            <h3 id="StatusCodes">Status Codes and Descriptions</h3>
                            <img src="Images2/statuscodes.jpg" alt="" />
                            <img src="Images2/codes2.jpg" alt="" />

                            <h4>Transaction Types</h4>
                            <img src="Images2/TransactionTypes.jpg" alt="" />
                            <h4>Banks and Telecoms With Specified Bank and Telecom Codes</h4>
                            <img src="Images2/bankcodes.jpg" alt="" />
                            <h4>Payment Codes</h4>
                            <img src="Images2/paymentcodes.jpg" />
                            <h5>References</h5>
                            <p>
                                [1] Digital Signatures in .NETFramework
                            </p>
                            <a href="https://www.red-gate.com/simple-talk/dotnet/net-framework/beginning-with-digital-signatures-in-net-framework/">https://www.red-gate.com/simple-talk/dotnet/net-framework/beginning-with-digital-signatures-in-net-framework/</a>
                            <p>
                                [2]OpenSSLEssentials
                            </p>
                            <a href="https://www.digitalocean.com/community/tutorials/openssl-essentials-working-with-ssl-certificates-private-keys-and-csrs">https://www.digitalocean.com/community/tutorials/openssl-essentials-working-with-ssl-certificates-private-keys-and-csrs</a>
                        </div>

                    </section>
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
</asp:Content>
