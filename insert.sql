DROP table mnpInterfaceList
GO

CREATE table mnpInterfaceList
( id text, channelRefID  text, companyCode  text, createDate  text, customerNumber  text, customerType  text, errorMessage  text, groupCode  text, idNumber  text, idType  text, mnpPinTrnsID  text, mnpSeqnID  text, mnpTransactionStatus  text, mnpTransactionSubType  text, mnpTransactionType  text, pinCancellationBy  text, pinCancellationDate  text, pinExpiryBy  text, pinExpiryDate  text, pinFirstActivateDate  text, pinNumber  text, pinRejectCode  text, pinRejectDate  text, pinRejectDescription  text, pinRequestBy  text, pinRequestDate  text, product  text, retentionStatus  text, segmentCode  text, sourceSystem  text, stage  text, status  text, subscriberAOU  text, subscriberNumber  text, updateDate  text ) 
GO

BULK INSERT mnpInterfaceList
FROM '/tmp/results.csv'
 WITH
      (
         FIELDTERMINATOR =',',
	 FIRSTROW = 1,
         ROWTERMINATOR ='ObjectId'
      );
GO
