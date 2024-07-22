-- CreateTable
CREATE TABLE "Utilisateurs" (
    "id" TEXT NOT NULL,
    "nom" TEXT NOT NULL,
    "prenom" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "role" INTEGER NOT NULL DEFAULT 2,
    "loggin_attempts" INTEGER NOT NULL DEFAULT 0,
    "blocked_until" TIMESTAMP(3),
    "telephone" TEXT,

    CONSTRAINT "Utilisateurs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Item" (
    "id" SERIAL NOT NULL,
    "Date" TIMESTAMP(3) NOT NULL,
    "BarcodePrice" DOUBLE PRECISION NOT NULL,
    "BarcodeWeight" DOUBLE PRECISION NOT NULL,
    "PosAddItem" BOOLEAN NOT NULL,
    "LoyaltyPoints" INTEGER NOT NULL,
    "CalculateLoyaltyFrom" INTEGER NOT NULL,
    "GiftVoucher" BOOLEAN NOT NULL,
    "IntrastatExcluded" BOOLEAN NOT NULL,
    "CreateCustomerProductInCustomerPark" BOOLEAN NOT NULL,
    "IsMaintenanceContract" BOOLEAN NOT NULL,
    "IsGuaranteeExtension" BOOLEAN NOT NULL,
    "CustomerParkCreation" INTEGER NOT NULL,
    "StockBookingAllowed" BOOLEAN NOT NULL,
    "AutomaticStockBooking" BOOLEAN NOT NULL,
    "IncludeToRecursiveReplenishment" BOOLEAN NOT NULL,
    "IncludeToFabricationReplenishment" BOOLEAN NOT NULL,
    "IncludeToSupplierReplenishment" BOOLEAN NOT NULL,
    "CadenceQuantity" INTEGER NOT NULL,
    "CadenceNumberOfDays" INTEGER NOT NULL,
    "DoNotAssortAssemblyRequestsWithDifferentDates" BOOLEAN NOT NULL,
    "MaximumGapDayToAssort" INTEGER NOT NULL,
    "NomenclatureAccountingTransferTypeForSale" INTEGER NOT NULL,
    "NomenclatureAccountingTransferTypeForPurchase" INTEGER NOT NULL,
    "VirtualPump" BOOLEAN NOT NULL,
    "VirtualStockValue" DOUBLE PRECISION NOT NULL,
    "BookedQuantity" DOUBLE PRECISION NOT NULL,
    "PurchaseBillOfQuantitiesProgramKeepActiveFromQuoteToOrder" BOOLEAN NOT NULL,
    "NotOnMarket" BOOLEAN NOT NULL,
    "PurchaseUnitPriceProgramKeepActiveFromQuoteToOrder" BOOLEAN NOT NULL,
    "CanBePartiallyDelivered" BOOLEAN NOT NULL,
    "Caption" TEXT NOT NULL,
    "OxatisOxatisHandlingSurcharge1St" DOUBLE PRECISION NOT NULL,
    "OxatisOxatisHandlingSurchargeOthers" DOUBLE PRECISION NOT NULL,
    "InterventionDurationEqualsQuantity" BOOLEAN NOT NULL,
    "Height" DOUBLE PRECISION NOT NULL,
    "Width" DOUBLE PRECISION NOT NULL,
    "Length" DOUBLE PRECISION NOT NULL,
    "FamilyId" TEXT NOT NULL,
    "OxatisOxatisUseSubFamilyAsBrand" BOOLEAN NOT NULL,
    "IsManagedByCounterMark" BOOLEAN NOT NULL,
    "IsCounterMarkForced" BOOLEAN NOT NULL,
    "SalePurchaseConversionRate" DOUBLE PRECISION NOT NULL,
    "LimitDateMode" INTEGER NOT NULL,
    "LimitDateSafetyDelay" INTEGER NOT NULL,
    "UniqueId" TEXT NOT NULL,
    "PurchasePrice" DOUBLE PRECISION NOT NULL,
    "ChargeRate" DOUBLE PRECISION NOT NULL,
    "ChargeAmount" DOUBLE PRECISION NOT NULL,
    "CostPrice" DOUBLE PRECISION NOT NULL,
    "InterestRate" DOUBLE PRECISION NOT NULL,
    "InterestAmount" DOUBLE PRECISION NOT NULL,
    "SalePriceVatExcluded" DOUBLE PRECISION NOT NULL,
    "BrandRate" DOUBLE PRECISION NOT NULL,
    "VatAmount" DOUBLE PRECISION NOT NULL,
    "SalePriceVatIncluded" DOUBLE PRECISION NOT NULL,
    "ManageStock" BOOLEAN NOT NULL,
    "RealStock" DOUBLE PRECISION NOT NULL,
    "Pump" DOUBLE PRECISION NOT NULL,
    "StockValue" DOUBLE PRECISION NOT NULL,
    "OrderedQuantity" DOUBLE PRECISION NOT NULL,
    "SuppliersOrderedQuantity" DOUBLE PRECISION NOT NULL,
    "VirtualStock" DOUBLE PRECISION NOT NULL,
    "DefaultQuantity" DOUBLE PRECISION NOT NULL,
    "Volume" DOUBLE PRECISION NOT NULL,
    "Weight" DOUBLE PRECISION NOT NULL,
    "NetWeight" DOUBLE PRECISION NOT NULL,
    "ComponentsPurchasePrice" DOUBLE PRECISION NOT NULL,
    "ComponentsCostPrice" DOUBLE PRECISION NOT NULL,
    "ComponentsSalePriceVatExcluded" DOUBLE PRECISION NOT NULL,
    "ComponentsSalePriceVatIncluded" DOUBLE PRECISION NOT NULL,
    "PrintComponentDetail" INTEGER NOT NULL,
    "AssemblingVirtualQuantity" DOUBLE PRECISION NOT NULL,
    "DisassemblingQuantity" DOUBLE PRECISION NOT NULL,
    "QuantityUsedToAssemblate" DOUBLE PRECISION NOT NULL,
    "QuantityFromDisassembling" DOUBLE PRECISION NOT NULL,
    "AllowNegativeStock" BOOLEAN NOT NULL,
    "UseComponentVat" BOOLEAN NOT NULL,
    "ApplyPriceListOnComponents" BOOLEAN NOT NULL,
    "ActiveState" INTEGER NOT NULL,
    "AdvisedSalePriceVatExcluded" DOUBLE PRECISION NOT NULL,
    "SetItemSalePriceWithAdvisedSalePrice" BOOLEAN NOT NULL,
    "TrackingMode" INTEGER NOT NULL,
    "AllowComponentsModification" BOOLEAN NOT NULL,
    "AllowPublishOnWeb" BOOLEAN NOT NULL,
    "ImageVersion" INTEGER NOT NULL,
    "PriceDecimalNumber" INTEGER NOT NULL,
    "IsHumanServicesIncludedInAttestation" BOOLEAN NOT NULL,
    "OxatisOxatisShowInStockNote" BOOLEAN NOT NULL,
    "OxatisOxatisShowStockLevel" BOOLEAN NOT NULL,
    "OxatisOxatisShowIfOutOfStock" BOOLEAN NOT NULL,
    "OxatisOxatisSaleIfOutOfStock" BOOLEAN NOT NULL,
    "OxatisOxatisSaleIfOutOfStockScenario" INTEGER NOT NULL,
    "OxatisOxatisShowDaysToShip" BOOLEAN NOT NULL,
    "OxatisOxatisShipPrice" DOUBLE PRECISION NOT NULL,
    "OxatisOxatisDaysToShip" INTEGER NOT NULL,
    "OxatisOxatisUserMainSupplierDaysToShip" BOOLEAN NOT NULL,
    "ItemType" INTEGER NOT NULL,
    "BillOfQuantitiesProgramKeepActiveFromQuoteToOrder" BOOLEAN NOT NULL,
    "SaleUnitPriceProgramKeepActiveFromQuoteToOrder" BOOLEAN NOT NULL,
    "UpdateComponentsStockInFabrication" BOOLEAN NOT NULL,
    "CustomersDeliveryOrderPreparingQuantity" DOUBLE PRECISION NOT NULL,
    "CustomersReturnOrderPreparingQuantity" DOUBLE PRECISION NOT NULL,
    "SuppliersDeliveryOrderPreparingQuantity" DOUBLE PRECISION NOT NULL,
    "SuppliersReturnOrderPreparingQuantity" DOUBLE PRECISION NOT NULL,
    "StockBillOfQuantitiesProgramKeepActiveFromQuoteToOrder" BOOLEAN NOT NULL,
    "PurchaseChargesRate" DOUBLE PRECISION NOT NULL,
    "PosIsScale" BOOLEAN NOT NULL,
    "PosTare" TEXT,
    "ReplenishmentDeliveryAddressType" INTEGER NOT NULL,
    "ItemImage" TEXT,
    "DesCom" TEXT NOT NULL,
    "DesComClear" TEXT NOT NULL,
    "OxatisOxatisMetaTitle" TEXT,
    "OxatisOxatisMetaDescription" TEXT,
    "OxatisOxatisMetaKeywords" TEXT,
    "OxatisOxatisBrand" TEXT,
    "MainIntervener" TEXT,
    "IntrastatNc8NomenclatureId" TEXT,
    "Group1" TEXT,
    "Group2" TEXT,
    "NotPrintable" BOOLEAN,
    "NotIncluded" BOOLEAN,
    "IsFixedPrice" BOOLEAN,
    "NonInvoiceableType" INTEGER,
    "ComponentCalculationType" INTEGER,
    "ReplacementItem" TEXT,
    "WeightUnitId" TEXT,
    "NumberOfItemByPackage" INTEGER NOT NULL,
    "VolumeUnitId" TEXT,
    "SupplierId" TEXT NOT NULL,
    "EcotaxId" TEXT,
    "StockDestination" INTEGER NOT NULL,
    "StockVarianceAccount" TEXT NOT NULL,
    "CurrentStockAccount" TEXT NOT NULL,
    "VatId" TEXT NOT NULL,
    "SysModuleId" TEXT,
    "SysDatabaseId" TEXT,
    "SysRecordVersion" INTEGER NOT NULL,
    "SysRecordVersionId" TEXT NOT NULL,
    "SysEditCounter" INTEGER NOT NULL,
    "LimitDateSafetyDelayMode" INTEGER,
    "DefaultLifetime" INTEGER,
    "PurchasePriceUpdateType" INTEGER,
    "AnalyticAccountingGridId" TEXT,
    "PurchaseUnitId" TEXT,
    "DimensionUnitId" TEXT,
    "OxatisOxatisLongDescription" TEXT,
    "OxatisOxatisLongDescriptionClear" TEXT,
    "OxatisOxatisSmallImage" TEXT,
    "PurchaseBillOfQuantitiesProgramProgram" TEXT,
    "CatalogId" TEXT,
    "CatalogItemId" TEXT,
    "EcotaxFurnitureId" TEXT,
    "PurchaseUnitPriceProgramProgram" TEXT,
    "LocalizableCaption2" TEXT,
    "LocalizableDesCom2" TEXT,
    "LocalizableDesComClear2" TEXT,
    "LocalizableCaption3" TEXT,
    "LocalizableCaption4" TEXT,
    "LocalizableCaption5" TEXT,
    "LocalizableDesCom3" TEXT,
    "LocalizableDesComClear3" TEXT,
    "LocalizableDesCom4" TEXT,
    "LocalizableDesComClear4" TEXT,
    "LocalizableDesCom5" TEXT,
    "LocalizableDesComClear5" TEXT,
    "IntrastatOriginCountryId" TEXT,
    "ParentRangeItemId" TEXT,
    "RangeTypeElementId0" TEXT,
    "RangeTypeElementId1" TEXT,
    "RangeTypeElementId2" TEXT,
    "RangeTypeElementId3" TEXT,
    "RangeTypeElementId4" TEXT,
    "DefaultAllowedStorehouseId" TEXT,
    "MaintenanceContractTemplateId" TEXT,
    "GuaranteeTypeId" TEXT,
    "StockBillOfQuantitiesProgramProgram" TEXT,
    "PosThumbnail" TEXT,
    "GiftVoucherCashValue" DOUBLE PRECISION,
    "GiftVoucherValidityDuration" INTEGER,
    "IsExtraFee" BOOLEAN NOT NULL,
    "TimeUnitId" TEXT,
    "TechnicalDesCom" TEXT,
    "TechnicalDesComClear" TEXT,
    "LocalizableTechnicalDesCom2" TEXT,
    "LocalizableTechnicalDesComClear2" TEXT,
    "LocalizableTechnicalDesCom3" TEXT,
    "LocalizableTechnicalDesComClear3" TEXT,
    "LocalizableTechnicalDesCom4" TEXT,
    "LocalizableTechnicalDesComClear4" TEXT,
    "LocalizableTechnicalDesCom5" TEXT,
    "LocalizableTechnicalDesComClear5" TEXT,
    "CompetenceId" TEXT,
    "EquipmentTypeId" TEXT,
    "ScheduleEventTemplateId" TEXT,
    "CompetenceNumberToPlan" INTEGER,
    "EquipmentTypeNumberToPlan" INTEGER,
    "CadenceDuration" INTEGER NOT NULL,
    "CadenceDurationType" INTEGER NOT NULL,
    "CadenceDurationQuantity" INTEGER NOT NULL,
    "InstallationTime" INTEGER NOT NULL,
    "LabourCode" TEXT,
    "AutoUpdateLabourPrice" BOOLEAN NOT NULL,
    "IsEquipment" BOOLEAN NOT NULL,
    "InstallationCalculationType" INTEGER NOT NULL,
    "MaterialPricesPurchasePrice" DOUBLE PRECISION NOT NULL,
    "MaterialPricesChargeRate" DOUBLE PRECISION NOT NULL,
    "MaterialPricesChargeAmount" DOUBLE PRECISION NOT NULL,
    "MaterialPricesCostPrice" DOUBLE PRECISION NOT NULL,
    "MaterialPricesInterestRate" DOUBLE PRECISION NOT NULL,
    "MaterialPricesInterestAmount" DOUBLE PRECISION NOT NULL,
    "MaterialPricesSalePriceVatExcluded" DOUBLE PRECISION NOT NULL,
    "MaterialPricesBrandRate" DOUBLE PRECISION NOT NULL,
    "MaterialPricesVatId" TEXT NOT NULL,
    "MaterialPricesVatAmount" DOUBLE PRECISION NOT NULL,
    "MaterialPricesSalePriceVatIncluded" DOUBLE PRECISION NOT NULL,
    "MaterialPricesAdvisedSalePriceVatExcluded" DOUBLE PRECISION NOT NULL,
    "MaterialPricesSetItemSalePriceWithAdvisedSalePrice" BOOLEAN NOT NULL,
    "MaterialPricesIsFixedPrice" BOOLEAN,
    "MaterialPricesEcotaxFurnitureId" TEXT,
    "LabourPricesPurchasePrice" DOUBLE PRECISION NOT NULL,
    "LabourPricesChargeRate" DOUBLE PRECISION NOT NULL,
    "LabourPricesChargeAmount" DOUBLE PRECISION NOT NULL,
    "LabourPricesCostPrice" DOUBLE PRECISION NOT NULL,
    "LabourPricesInterestRate" DOUBLE PRECISION NOT NULL,
    "LabourPricesInterestAmount" DOUBLE PRECISION NOT NULL,
    "LabourPricesSalePriceVatExcluded" DOUBLE PRECISION NOT NULL,
    "LabourPricesBrandRate" DOUBLE PRECISION NOT NULL,
    "LabourPricesVatId" TEXT NOT NULL,
    "LabourPricesVatAmount" DOUBLE PRECISION NOT NULL,
    "LabourPricesSalePriceVatIncluded" DOUBLE PRECISION NOT NULL,
    "LabourPricesAdvisedSalePriceVatExcluded" DOUBLE PRECISION NOT NULL,
    "LabourPricesSetItemSalePriceWithAdvisedSalePrice" BOOLEAN NOT NULL,
    "LabourPricesIsFixedPrice" BOOLEAN,
    "LabourPricesEcotaxFurnitureId" TEXT,
    "CanBePartiallyInvoiced" BOOLEAN NOT NULL,
    "PickMovementDisallowedOnTotallyBookedItem" BOOLEAN NOT NULL,
    "SalePriceModifiedDate" TIMESTAMP(3),
    "SalePriceModifiedUserId" TEXT,
    "TarifeoCode" TEXT,
    "TarifeoFullCode" TEXT,
    "TarifeoProducerId" TEXT,
    "ProducerName" TEXT,
    "TarifeoPriceDate" TIMESTAMP(3),
    "TarifeoPriceVersion" TEXT,
    "TarifeoUpdateDatetime" TIMESTAMP(3),
    "IsSubscription" BOOLEAN NOT NULL,
    "SubscriptionPassings" INTEGER NOT NULL,
    "SubscriptionTotalCostPrice" DOUBLE PRECISION NOT NULL,
    "SubscriptionTotalPurchasePrice" DOUBLE PRECISION NOT NULL,
    "SubscriptionTotalSalePriceVatExcluded" DOUBLE PRECISION NOT NULL,
    "SubscriptionValidityDuration" INTEGER NOT NULL,

    CONSTRAINT "Item_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Customer" (
    "id" SERIAL NOT NULL,
    "DisallowOrderAssort" BOOLEAN,
    "DueCommitmentsXDay" INTEGER,
    "EffectOfTradeAmount" DOUBLE PRECISION,
    "GenerateVcs" BOOLEAN,
    "InvoicingChargesAmount" DOUBLE PRECISION,
    "AutomaticStockBooking" BOOLEAN,
    "CustomerToUseInCustomerProducts" INTEGER,
    "ExtendedCurrentAmount" DOUBLE PRECISION,
    "ThresholdBeforeExceedAmount" DOUBLE PRECISION,
    "UseInvoicingAddressAsDeliveryAddress" BOOLEAN,
    "UseInvoicingContactAsDeliveryContact" BOOLEAN,
    "MainDeliveryAddress_NPAI" BOOLEAN,
    "MainInvoicingAddress_NPAI" BOOLEAN,
    "MainDeliveryContact_NaturalPerson" BOOLEAN,
    "MainDeliveryContact_Optin" BOOLEAN,
    "MainInvoicingContact_NaturalPerson" BOOLEAN,
    "MainInvoicingContact_Optin" BOOLEAN,
    "NaturalPerson" BOOLEAN,
    "TerritorialityId" TEXT,
    "FinancialDiscountType" INTEGER,
    "FinancialDiscountRate" DOUBLE PRECISION,
    "FinancialDiscountPaymentDelay" INTEGER,
    "ActiveState" INTEGER,
    "DiscountRate" DOUBLE PRECISION,
    "SecondDiscountRate" DOUBLE PRECISION,
    "AllowedAmount" DOUBLE PRECISION,
    "CurrentAmount" DOUBLE PRECISION,
    "InitialAmount" DOUBLE PRECISION,
    "ExceedAmount" DOUBLE PRECISION,
    "MustRetrieveCommitmentsFromAccounting" BOOLEAN,
    "PriceWithTaxBased" BOOLEAN,
    "MustBeReminder" BOOLEAN,
    "DayNumberToFirstReminder" INTEGER,
    "DayNumberToSecondReminder" INTEGER,
    "DayNumberToThirdReminder" INTEGER,
    "IsCustomerAccount" BOOLEAN,
    "WebContactSendKind" INTEGER,
    "SubjectToRe" BOOLEAN,
    "UniqueId" TEXT,
    "CheckExceedCommitmentDate" BOOLEAN,
    "DisallowDeliveryAssort" BOOLEAN,
    "SendReminderToPayerThird" BOOLEAN,
    "Xx_EnvoiCarteVoeux" BOOLEAN,
    "AssortDeliveryByOrder" BOOLEAN,
    "CreatePosDeliveryOrderByDefault" BOOLEAN,
    "LoyaltyOriginReportType" INTEGER,
    "LoyaltyOriginReportValue" DOUBLE PRECISION,
    "LoyaltyValue" DOUBLE PRECISION,
    "LoyaltyCardCreationDate" TIMESTAMP(3),
    "LoyaltyCardValidityDuration" INTEGER,
    "LoyaltyCardExpiryDate" TIMESTAMP(3),
    "LoyaltyCardRenewalDate" TIMESTAMP(3),
    "SysRecordVersion" INTEGER,
    "SysRecordVersionId" TEXT,
    "SysEditCounter" INTEGER,
    "SelectedReminderReport" TEXT,
    "IdentificationType" INTEGER,
    "Type" INTEGER,
    "Group1" TEXT,
    "Group2" TEXT,
    "FirstInvoicingDate" TIMESTAMP(3),
    "PaymentDate" INTEGER,
    "MainDeliveryAddress_Longitude" DOUBLE PRECISION,
    "MainDeliveryAddress_Latitude" DOUBLE PRECISION,
    "SysCreatedDate" TIMESTAMP(3),
    "SysModifiedDate" TIMESTAMP(3),
    "TaxIds_0" TEXT,
    "TaxIds_1" TEXT,
    "TaxIds_2" TEXT,
    "InvoicingCharges_VatId" TEXT,
    "LastInvoicingDate" TIMESTAMP(3),
    "StorehouseId" TEXT,
    "SchedulerColor" INTEGER,
    "ShowTechnicalSheetOnFront" BOOLEAN,
    "MainDeliveryContact_AllowUsePersonnalDatas" BOOLEAN,
    "MainInvoicingContact_AllowUsePersonnalDatas" BOOLEAN,
    "AllowUsePersonnalDatas" BOOLEAN,
    "LoyaltyCumulativeTurnoverReport" DOUBLE PRECISION,
    "LoyaltyCumulativeTurnover" DOUBLE PRECISION,
    "DepositPercentage" DOUBLE PRECISION,
    "SecurityBondRate" DOUBLE PRECISION,
    "SecurityBondRateForGoodCompletedWork" DOUBLE PRECISION,
    "DefaultBankAccountId" TEXT,
    "MainInvoicingContact_Civility" TEXT,
    "MainInvoicingContact_Name" TEXT,
    "ThirdLanguage" TEXT,
    "MainInvoicingContact_Firstname" TEXT,
    "MainInvoicingContact_Phone" TEXT,
    "MainInvoicingContact_Cellphone" TEXT,
    "MainInvoicingContact_Fax" TEXT,
    "MainInvoicingContact_Email" TEXT,
    "Name" TEXT,
    "MainInvoicingContact_Function" TEXT,
    "MainInvoicingContact_Department" TEXT,
    "MainInvoicingAddress_Website" TEXT,
    "DocumentPrintMention" TEXT,
    "Nic" TEXT,
    "MainDeliveryContact_Civility" TEXT,
    "MainDeliveryContact_Name" TEXT,
    "MainDeliveryContact_Firstname" TEXT,
    "MainDeliveryContact_FirstName" TEXT,
    "MainDeliveryContact_Phone" TEXT,
    "MainDeliveryContact_CellPhone" TEXT,
    "MainDeliveryContact_Fax" TEXT,
    "MainDeliveryContact_Email" TEXT,
    "MainDeliveryContact_Function" TEXT,
    "MainDeliveryContact_Department" TEXT,
    "MainDeliveryAddress_Website" TEXT,
    "Accounts_AuxiliaryAccount" TEXT,
    "Accounts_DoubtfulAccount" TEXT,
    "MainInvoicingAddress_Address1" TEXT,
    "MainInvoicingAddress_Address2" TEXT,
    "MainInvoicingAddress_Address3" TEXT,
    "MainInvoicingAddress_Address4" TEXT,
    "MainInvoicingAddress_Zipcode" TEXT,
    "MainInvoicingAddress_City" TEXT,
    "MainInvoicingAddress_State" TEXT,
    "MainInvoicingAddress_Countryisocode" TEXT,
    "MainInvoicingAddress_Description" TEXT,
    "MainInvoicingAddress_Civility" TEXT,
    "MainInvoicingAddress_Thirdname" TEXT,
    "MainDeliveryAddress_Address1" TEXT,
    "MainDeliveryAddress_Address2" TEXT,
    "MainInvoicingContact_FirstName" TEXT,
    "MainDeliveryAddress_Address3" TEXT,
    "MainDeliveryAddress_Address4" TEXT,
    "MainDeliveryAddress_Zipcode" TEXT,
    "MainDeliveryAddress_City" TEXT,
    "MainDeliveryAddress_State" TEXT,
    "MainDeliveryAddress_Countryisocode" TEXT,
    "MainDeliveryAddress_Description" TEXT,
    "MainDeliveryAddress_Civility" TEXT,
    "MainDeliveryAddress_Thirdname" TEXT,
    "LoyaltyCard_Type" TEXT,
    "LoyaltyCard_Id" TEXT,
    "Gocardless_ThirdId" TEXT,
    "SysCreatedUser" TEXT,
    "TravelExpenseId" TEXT,
    "SysModifiedUser" TEXT,
    "NotesClear" TEXT,
    "Notes" TEXT,
    "Accounts_BillofexchangeAccountingAccount" TEXT,
    "Accounts_SecurityBondAccount" TEXT,
    "ShippingId" TEXT,
    "DocumentSerialId" TEXT,
    "Accounts_SecurityBondForGoodCompletedWorkAccount" TEXT,
    "AnalyticAccountingGridId" TEXT,
    "BuyerReference" TEXT,
    "Accounts_Account" TEXT,
    "CurrencyId" TEXT,
    "PaymentThirdId" TEXT,
    "InvoicingThirdId" TEXT,
    "ColleagueId" TEXT,
    "TechnicalSheetClear" TEXT,
    "SettlementModeId" TEXT,
    "TechnicalSheet" TEXT,
    "PricelistCategoryId" TEXT,
    "Siren" TEXT,
    "Naf" TEXT,
    "FamilyId" TEXT,
    "SubfamilyId" TEXT,
    "IntracommunityVatNumber" TEXT,
    "MainInvoicingContact_ExternalId_GoogleId" TEXT,
    "MainInvoicingContact_ExternalId_OutlookId" TEXT,
    "Civility" TEXT,
    "MainDeliveryContact_ExternalId_GoogleId" TEXT,
    "MainDeliveryContact_ExternalId_OutlookId" TEXT,
    "Lat" DOUBLE PRECISION,
    "Lon" DOUBLE PRECISION,

    CONSTRAINT "Customer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Chantier" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "address" TEXT,
    "city" TEXT,
    "postal_code" TEXT,
    "country" TEXT,
    "phone" TEXT,
    "email" TEXT,
    "contact" TEXT,
    "start_date" TIMESTAMP(3),
    "end_date" TIMESTAMP(3),
    "client_id" INTEGER,
    "calendar_id" INTEGER,

    CONSTRAINT "Chantier_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FicheChantier" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "project_supervision" TEXT,
    "project_manager_id" INTEGER,
    "chantier_id" INTEGER NOT NULL,
    "imageUrl" TEXT,
    "audioUrl" TEXT,

    CONSTRAINT "FicheChantier_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Staff" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "grade" TEXT,
    "role" TEXT,
    "phone" TEXT,
    "email" TEXT NOT NULL,

    CONSTRAINT "Staff_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Utilisateurs_email_key" ON "Utilisateurs"("email");

-- CreateIndex
CREATE UNIQUE INDEX "FicheChantier_chantier_id_key" ON "FicheChantier"("chantier_id");

-- AddForeignKey
ALTER TABLE "FicheChantier" ADD CONSTRAINT "FicheChantier_chantier_id_fkey" FOREIGN KEY ("chantier_id") REFERENCES "Chantier"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
