[![Project Status](http://opensource.box.com/badges/active.svg)](http://opensource.box.com/badges)

Acumatica Print Customer Refund Check Customization
==================================

### Prerequisites
* Acumatica 2017R2 or higher

Quick Start
-----------

### Installation

##### Install the customization deployment package
1. Download PrintCustomerRefundPkg.zip from this repository
2. In your Acumatica ERP instance, navigate to System -> Customization -> Customization Projects (SM204505), import PrintCustomerRefundPkg.zip as a customization project
3. Publish the customization project.

## Usage
To use this customziation:
- Create new 'Customer Refund' type of payment. 
![Screenshot](/_ReadMeImages/AR302000a.png)
- Once saved, 'Payment Ref' will have value as 'To be generated'
![Screenshot](/_ReadMeImages/AR302000b.png)
- Such 'Customer Refund' type of Payment with Check type of Payment method can not be released without printing refund check.
![Screenshot](/_ReadMeImages/AR302000c.png)
- New check form for Customer refund (ar640501.rpx report) is added to the Reports menu of the Payments & Applications screen (AR302000). Format of this new report is same as out-of-box Check Form (AP640500.rpx). You may further customize AR640501.rpx report to achieve desired format of the refund check report.
![Screenshot](/_ReadMeImages/AR302000d.png)
- Clicking on Reports -> Print Refund Check will assign the next check number to 'Payment Ref' and Payment Method (CA204000) -> AR Last Reference Number for matching Cash Account used. And also it will redirect to refund check form report AR640501.rpx.
![Screenshot](/_ReadMeImages/AR302000e.png)
- If you want to use the AP Check numbering sequence for customer refunds, check "Use AP Reference Nbr for AR"
![Screenshot](/_ReadMeImages/AR302000f.png)
- If you want to print multiple checks at once, navigate to AR508800 "Print customer Refunds"
![Screenshot](/_ReadMeImages/AR508800a.png)
- After clicking "Process", the selected checks will be displayed in the report browser
![Screenshot](/_ReadMeImages/AR508800b.png)

Known Issues
------------
None at the moment

## Copyright and License

Copyright © `2015` `Acumatica`

This component is licensed under the MIT License, a copy of which is available online [here](LICENSE.md)
