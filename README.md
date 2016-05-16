# Acumatica Print Customer Refund Check Customization


## Overview
- PrintCustomerRefundPkg.zip is a deployment package for this customization. This customization is packaged as code files.
- New check form for Customer refund (ar640501.rpx report) that is added to the Reports menu of the Payments & Applications screen (AR302000). Format of this new report is same as out- of-box Check Form (AP640500.rpx). You may further customize ar640501.rpx report to achieve desired format of the refund check report.
- There will not be any batch printing capability of refund checks.
- Check Number will be the next check number for the Payment Method and Cash Account. Accounts Receivable and Accounts Payable will update the Next Check Number when using the same Payment Method and Cash Account.
