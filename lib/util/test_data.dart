
import 'app_string.dart';

class TestData {
  String specication = '''High Efficiency for the Cold Chain
Vector® HE 19 – High Efficiency – is the next generation temperature-controlled trailer system. The unit combines experienced technology, like the all-electric architecture of the E-Drive, with new additions designed to significantly improve performance and efficiency.

Benefits
The new Vector HE 19 unit delivers huge performance advantages for our customers in just about every area*.

Improved multi-speed engine design, bringing fuel savings of up to 30 per cent

Single, ultra-efficient evaporator fan
The proven performance of a hermetic compressor and economizer
The efficiency of a microchannel heat exchanger condenser
Weight improved (-10 %)
Noise & vibration improved -3dB(A)
Controls & HMI improved (New APX control system)
Total cost of ownership (up to 20%)
Multi energy source capability – Flexible Power ready
* Results based on the comparison between the new Vector HE 19 single temperature and the Vector 1950 single temperature. Vector HE 19 standard version emits -3dB(A) in accordance with CE2000-14 vs Vector 1950 standard version – based on external laboratory tests CEVAA.

 ''';

  static const List<String> benefitsList = [
    "Improved multi-speed engine design, bringing fuel savings of up to 30 per cent",
    "New, Stage V compliant diesel engine with electronic engine control",
    "upper airflow management, creating much more efficient cold production",
    "Single, ultra-efficient evaporator fan"
  ];

  static const List<String> benefitsHeaderList = [
    "High Efficiency for the Cold Chain",
    "Vector® HE 19 – High Efficiency – is the next generation temperature-controlled trailer system. "
        "The unit combines experienced technology, like the all-electric architecture of the E-Drive, "
        "with new additions designed to significantly improve performance and efficiency.",
  ];

  static const Map<String, String> map1 = {
    'Czech': "3/24/2020",
    'Danish': "3/24/2020",
    'English': "3/24/2020",
    'French': "3/24/2020",
    'German': "3/24/2020",
    'Italian': "3/24/2020",
    'Norwegian': "3/24/2020",
    'Polish': "3/24/2020",
    'Russian': "3/24/2020",
    'Spanish': "3/24/2020",
    'Swedish': "3/24/2020"
  };

  static const String performanceSpecifications = "Performance Specifications";
  static const String condenserDimensions = "Condenser Dimensions";

  static const String evaporatorDimensions = "Evaporator Dimensions";
  static const String bodyOpening = "Body Opening";
  static const String approximateWeight = "Approximate Weight";

  static const String coolingCapacity = "Cooling Capacity";
  static const String evaporatorAirflow = "Evaporator Airflow";
  static const String appliedSystemPerformance =
      "Applied system performance  3,100 cfm (5,270 m3/hr)";
  static const List<String> specifications = [
    "76.4 \"x 85.7\" x 22.8\" ",
    "(1,940 x 2,176 x 579 mm)",
    "66.3 \"  x 45.2 \" x 8.2 \"",
    "(1,684 x 1,149 x 280 mm)",
    "66.8\" x 46.0\" ",
    "(1,696 x 1,168 mm)",
    "1,690 lb. (767 kg)",
    "Remote 50-gallon aluminum fuel tank with mounting brackets: 65 lb. (29 kg)",
    "Battery: 50 lb. (23 kg)",
    "Ambient at 100°F (38°C)"
  ];

  static const List<String> evaporatorReturnAirTemp = [
    "35°F ( 2°C) ",
    " 0°F (-18°C)",
    "-20°F (-29°C)",
    "-20°F (-29°C)",
  ];

  static const List<String> highSpeedDieselOperation = [
    "35°F ( 2°C) ",
    " 0°F (-18°C)",
    "-20°F (-29°C)",
    "-20°F (-29°C)",
  ];

  static const List<String> bTUhr = [
    "68,000",
    "37,000",
    "25,000",
  ];

  static const List<String> watts = [
    "19,930"
        "10,845",
    "7,330",
  ];

  static const Map<String, String> featurePoint = {
    "The X4™ Series.":
        "Built upon the proven X2™ platform, the X4 7500 trailer refrigeration unit sets the bar even "
            "higher as the new industry standard for refrigeration performance and efficiency.",
    "Higher capacity.":
        "The model 7500 establishes the benchmark for extreme performance – up to 68,000 BTUs of cooling at AHRI rating conditions. It delivers fast pulldown,"
            " precise temperature control and peace of mind for the most demanding applications.",
    "Ultra high efficiency.":
        "EcoFORWARD™ technologies deliver significant fuel savings in addition to higher"
            " performance, achieving 35 to 50 percent more BTUs of cooling per gallon of fuel.",
    "Compliance plus.":
        "The X4 7500 unit provides compliance with 2013 EPA Tier 4 emissions regulations, "
            "while also improving operational efficiencies and performance.",
    "Proven reliability.":
        "The enhanced platform now includes proven high efficiency components from our Vector™ series"
            " and an industry leading warranty for dependability and reliability.",
    "APX™ control system.":
        "The modular APX system combines remarkable control intelligence,"
            " temperature control and system reliability with amazingly simple operation.",
    "Lower cost of ownership.":
        " Combining innovative engineering with a straightforward, "
            "practical design means less fuel consumption, reduced engine run hours, and lower maintenance costs."
  };






  static int getQuoteTypeFromIWOTypeCode(String IWO_Type_Code) {
    switch (IWO_Type_Code) {
      case "1286":
        return 0;
        break;
      case "1294":
        return 1;
        break;
      case "1288":
        return 2;
        break;
      default:
        return 0;
        break;
    }
  }









  static String jsonData=''' {
	"players": [{
		"keyword": "Sachin",
		"id": 1,
		"autocompleteTerm": "Sachin Tendulkar",
		"country": "India"
	}, {
		"keyword": "Adam",
		"id": 2,
		"autocompleteTerm": "Adam Gilchrist",
		"country": "Australia"
	}, {
		"keyword": "Brian",
		"id": 3,
		"autocompleteTerm": "Brian Lara",
		"country": "West Indies"
	}, {
		"keyword": "Wasim",
		"id": 4,
		"autocompleteTerm": "Wasim Akram",
		"country": "Pakistan"
	}, {
		"keyword": "Rahul",
		"id": 5,
		"autocompleteTerm": "Rahul Dravid",
		"country": "India"
	}, {
		"keyword": "Sourav",
		"id": 1,
		"autocompleteTerm": "Sourav Ganguly",
		"country": "India"
	}, {
		"keyword": "Alan",
		"id": 2,
		"autocompleteTerm": "Donald",
		"country": "South Africa"
	}, {
		"keyword": "Anil",
		"id": 2,
		"autocompleteTerm": "Anil Kumble",
		"country": "India"
	}, {
		"keyword": "Waqar",
		"id": 4,
		"autocompleteTerm": "Waqar Younis",
		"country": "Pakistan"
	}, {
		"keyword": "Sunil",
		"id": 1,
		"autocompleteTerm": "Sunil Gavaskar",
		"country": "India"
	}, {
		"keyword": "Brett",
		"id": 3,
		"autocompleteTerm": "Brett Lee",
		"country": "Australia"
	}, {
		"keyword": "Shane",
		"id": 1,
		"autocompleteTerm": "Shane Warne",
		"country": "Australia"
	}, {
		"keyword": "Saqlain",
		"id": 1,
		"autocompleteTerm": "Saqlain Mushtaq",
		"country": "Pakistan"
	}, {
		"keyword": "Chris",
		"id": 6,
		"autocompleteTerm": "Chris Cairns",
		"country": "New Zealand"
	}, {
		"keyword": "Chris",
		"id": 6,
		"autocompleteTerm": "Chris Harris",
		"country": "New Zealand"
	}, {
		"keyword": "Ricky",
		"id": 5,
		"autocompleteTerm": "Ricky Ponting",
		"country": "Australia"
	}, {
		"keyword": "Glen",
		"id": 7,
		"autocompleteTerm": "Glen McGrath",
		"country": "Australia"
	}]
}''';


}
