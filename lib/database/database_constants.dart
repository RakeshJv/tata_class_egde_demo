class DatabaseConstants
{
  static final String DB_NAME = "iM3QuoteDB.db";
  static final int VERSION = 1;
  static final String COLUNM_ID = "id";

  static final TABLE_QUOTE_PARTS = "quoteParts";
  static final String COLUMN_COMPANY_CODE = "Company_Code";
  static final String COLUMN_IWO_NO = "IWO_No";
  static final String COLUMN_ITASK_NO = "ITask_No";
  static final String COLUMN_SOP_SR_NO = "SOP_Sr_No";
  static final String COLUMN_PART_SR_NO = "Part_Sr_No";
  static final String COLUMN_QUANTITY = "Quantity";
  static final String COLUMN_Stock_Serial_No = "Stock_Serial_No";
  static final String COLUMN_IPARTNO = "iPartNo";
  static final String COLUMN_PART_NO = "partNo";
  static final String COLUMN_PART_DESCRIPTION = "description";
  static final String COLUMN_FACILITY_CODE = "facilityCode";
  static final String COLUMN_FACILITY_NAME = "facilityName";
  static final String COLUMN_ROOM_CODE = "roomCode";
  static final String COLUMN_ROOM_DESCRIPTION = "roomDescription";
  static final String COLUMN_ROOM_AREA_CODE = "roomAreaCode";
  static final String COLUMN_ROOM_AREA_NAME = "roomAreaName";
  static final String COLUMN_IINV_TYPE_CODE = "iInvTypeCode";
  static final String COLUMN_INV_TYPE_DESCRIPTION = "invTypeDescription";
  static final String COLUMN_DEFAULT_CASESIZE = "defaultCaseSize";
  static final String COLUMN_IEQUIPMENT_CODEBASE = "iEquipmentCodeBase";
  static final String COLUMN_EQ_CODE = "eQCode";
  static final String COLUMN_TAX_REQUIRED = "taxRequired";
  static final String COLUMN_PART_STATUS_CODE = "partStatusCode";
  static final String COLUMN_UPC = "uPC";
  static final String COLUMN_VENDOR_PART_ID = "vendorPartId";
  static final String COLUMN_SERIAL_NUMBER_REQUIRED = "serialNumberRequired";
  static final String COLUMN_SALES_PRICE = "salesPrice";

  static String CREATE_TABLE_QUOTE_PART = "CREATE TABLE " +
      TABLE_QUOTE_PARTS +
      "( " +
      COLUNM_ID +
      " INTEGER NOT NULL PRIMARY KEY "
          "AUTOINCREMENT, "
          "" +
      COLUMN_COMPANY_CODE +
      " INTEGER, " +
      COLUMN_IWO_NO +
      " INTEGER, " +
      COLUMN_ITASK_NO +
      " INTEGER, " +
      COLUMN_SOP_SR_NO +
      " INTEGER, " +
      COLUMN_PART_SR_NO +
      " INTEGER, " +
      COLUMN_QUANTITY +
      " TEXT, " +
      COLUMN_Stock_Serial_No +
      " INTEGER, " +
      COLUMN_IPARTNO +
      " INTEGER, " +
      COLUMN_PART_NO +
      " TEXT, " +
      COLUMN_PART_DESCRIPTION +
      " TEXT, " +
      COLUMN_FACILITY_CODE +
      " TEXT, " +
      COLUMN_FACILITY_NAME +
      " TEXT, " +
      COLUMN_ROOM_CODE +
      " TEXT, " +
      COLUMN_ROOM_DESCRIPTION +
      " TEXT, " +
      COLUMN_ROOM_AREA_CODE +
      " TEXT, " +
      COLUMN_ROOM_AREA_NAME +
      " TEXT, " +
      COLUMN_IINV_TYPE_CODE +
      " INTEGER, " +
      COLUMN_INV_TYPE_DESCRIPTION +
      " TEXT, " +
      COLUMN_DEFAULT_CASESIZE +
      " INTEGER, " +
      COLUMN_IEQUIPMENT_CODEBASE +
      " TEXT, " +
      COLUMN_EQ_CODE +
      " TEXT, " +
      COLUMN_TAX_REQUIRED +
      " TEXT, " +
      COLUMN_PART_STATUS_CODE +
      " TEXT, " +
      COLUMN_UPC +
      " TEXT, " +
      COLUMN_VENDOR_PART_ID +
      " TEXT, " +
      COLUMN_SERIAL_NUMBER_REQUIRED+
      " TEXT, " +
      COLUMN_SALES_PRICE +
      " TEXT );";

}