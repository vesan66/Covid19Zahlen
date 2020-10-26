//
//  jsonExampleFULL_20201010.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

#if DEBUG

// MARK: var jsonDummyDataBase_20201010 -
var jsonDummyDataBase_20201010:      String = """
{
  "uniqueIdField" : {
    "name" : "OBJECTID",
    "isSystemMaintained" : true
  },
  "spatialReference" : {
    "latestWkid" : 4326,
    "wkid" : 4326
  },
  "globalIdFieldName" : "",
  "geometryType" : "esriGeometryPolygon",
  "features" : [
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 3,
        "GEN" : "Flensburg",
        "cases7_per_100k" : 8.8727208198393992,
        "RS" : "01001",
        "EWZ" : 90164,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 1,
        "county" : "SK Flensburg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 133,
        "cases_per_100k" : 147.50898362983,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 12,
        "GEN" : "Kiel",
        "cases7_per_100k" : 4.0519623653735497,
        "RS" : "01002",
        "EWZ" : 246794,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 2,
        "county" : "SK Kiel",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 483,
        "cases_per_100k" : 195.70978224754199,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 1,
        "GEN" : "Lübeck",
        "cases7_per_100k" : 13.393063316861401,
        "RS" : "01003",
        "EWZ" : 216530,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 3,
        "county" : "SK Lübeck",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 326,
        "cases_per_100k" : 150.556504872304,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 3,
        "GEN" : "Neumünster",
        "cases7_per_100k" : 7.4816699087236298,
        "RS" : "01004",
        "EWZ" : 80196,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 4,
        "county" : "SK Neumünster",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 176,
        "cases_per_100k" : 219.46231732256001,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 5,
        "GEN" : "Dithmarschen",
        "cases7_per_100k" : 25.526867027546501,
        "RS" : "01051",
        "EWZ" : 133193,
        "BEZ" : "Kreis",
        "OBJECTID" : 5,
        "county" : "LK Dithmarschen",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 248,
        "cases_per_100k" : 186.19597125975099,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 18,
        "GEN" : "Herzogtum Lauenburg",
        "cases7_per_100k" : 6.5650265883576804,
        "RS" : "01053",
        "EWZ" : 198019,
        "BEZ" : "Kreis",
        "OBJECTID" : 6,
        "county" : "LK Herzogtum Lauenburg",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 377,
        "cases_per_100k" : 190.38577106237301,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 2,
        "GEN" : "Nordfriesland",
        "cases7_per_100k" : 8.4362251507975206,
        "RS" : "01054",
        "EWZ" : 165951,
        "BEZ" : "Kreis",
        "OBJECTID" : 7,
        "county" : "LK Nordfriesland",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 155,
        "cases_per_100k" : 93.401064169544,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 0,
        "GEN" : "Ostholstein",
        "cases7_per_100k" : 7.9784979480300597,
        "RS" : "01055",
        "EWZ" : 200539,
        "BEZ" : "Kreis",
        "OBJECTID" : 8,
        "county" : "LK Ostholstein",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 158,
        "cases_per_100k" : 78.787667236796807,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 47,
        "GEN" : "Pinneberg",
        "cases7_per_100k" : 11.3886929260399,
        "RS" : "01056",
        "EWZ" : 316103,
        "BEZ" : "Kreis",
        "OBJECTID" : 9,
        "county" : "LK Pinneberg",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 923,
        "cases_per_100k" : 291.99343252041302,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 8,
        "GEN" : "Plön",
        "cases7_per_100k" : 0.77708530842515899,
        "RS" : "01057",
        "EWZ" : 128686,
        "BEZ" : "Kreis",
        "OBJECTID" : 10,
        "county" : "LK Plön",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 170,
        "cases_per_100k" : 132.104502432277,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 14,
        "GEN" : "Rendsburg-Eckernförde",
        "cases7_per_100k" : 8.7559923822866299,
        "RS" : "01058",
        "EWZ" : 274098,
        "BEZ" : "Kreis",
        "OBJECTID" : 11,
        "county" : "LK Rendsburg-Eckernförde",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 386,
        "cases_per_100k" : 140.82554414844299,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 4,
        "GEN" : "Schleswig-Flensburg",
        "cases7_per_100k" : 8.4511523394778205,
        "RS" : "01059",
        "EWZ" : 201156,
        "BEZ" : "Kreis",
        "OBJECTID" : 12,
        "county" : "LK Schleswig-Flensburg",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 208,
        "cases_per_100k" : 103.40233450655199,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 7,
        "GEN" : "Segeberg",
        "cases7_per_100k" : 19.482276540091998,
        "RS" : "01060",
        "EWZ" : 277175,
        "BEZ" : "Kreis",
        "OBJECTID" : 13,
        "county" : "LK Segeberg",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 534,
        "cases_per_100k" : 192.65806800757599,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 3,
        "GEN" : "Steinburg",
        "cases7_per_100k" : 8.3961133627960596,
        "RS" : "01061",
        "EWZ" : 131013,
        "BEZ" : "Kreis",
        "OBJECTID" : 14,
        "county" : "LK Steinburg",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 238,
        "cases_per_100k" : 181.661361849587,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 35,
        "GEN" : "Stormarn",
        "cases7_per_100k" : 11.877651992988101,
        "RS" : "01062",
        "EWZ" : 244156,
        "BEZ" : "Kreis",
        "OBJECTID" : 15,
        "county" : "LK Stormarn",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 694,
        "cases_per_100k" : 284.24449941840498,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "2",
        "deaths" : 277,
        "GEN" : "Hamburg",
        "cases7_per_100k" : 29.2325956433688,
        "RS" : "02000",
        "EWZ" : 1847253,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 16,
        "county" : "SK Hamburg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 8814,
        "cases_per_100k" : 477.14092222343101,
        "BL" : "Hamburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 18,
        "GEN" : "Braunschweig",
        "cases7_per_100k" : 17.6419171952559,
        "RS" : "03101",
        "EWZ" : 249406,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 17,
        "county" : "SK Braunschweig",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 534,
        "cases_per_100k" : 214.108722324242,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 10,
        "GEN" : "Salzgitter",
        "cases7_per_100k" : 1.9177110201263801,
        "RS" : "03102",
        "EWZ" : 104291,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 18,
        "county" : "SK Salzgitter",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 271,
        "cases_per_100k" : 259.84984322712398,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 54,
        "GEN" : "Wolfsburg",
        "cases7_per_100k" : 4.8242757556021898,
        "RS" : "03103",
        "EWZ" : 124371,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 19,
        "county" : "SK Wolfsburg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 457,
        "cases_per_100k" : 367.44900338503402,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 5,
        "GEN" : "Gifhorn",
        "cases7_per_100k" : 2.8324920831846301,
        "RS" : "03151",
        "EWZ" : 176523,
        "BEZ" : "Landkreis",
        "OBJECTID" : 20,
        "county" : "LK Gifhorn",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 261,
        "cases_per_100k" : 147.85608674223801,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 27,
        "GEN" : "Goslar",
        "cases7_per_100k" : 2.9348751210635999,
        "RS" : "03153",
        "EWZ" : 136292,
        "BEZ" : "Landkreis",
        "OBJECTID" : 21,
        "county" : "LK Goslar",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 321,
        "cases_per_100k" : 235.523728465354,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 2,
        "GEN" : "Helmstedt",
        "cases7_per_100k" : 2.1906524858429099,
        "RS" : "03154",
        "EWZ" : 91297,
        "BEZ" : "Landkreis",
        "OBJECTID" : 22,
        "county" : "LK Helmstedt",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 176,
        "cases_per_100k" : 192.77741875417601,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 6,
        "GEN" : "Northeim",
        "cases7_per_100k" : 4.5356616396416802,
        "RS" : "03155",
        "EWZ" : 132285,
        "BEZ" : "Landkreis",
        "OBJECTID" : 23,
        "county" : "LK Northeim",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 190,
        "cases_per_100k" : 143.62928525532001,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 12,
        "GEN" : "Peine",
        "cases7_per_100k" : 18.545856484744199,
        "RS" : "03157",
        "EWZ" : 134801,
        "BEZ" : "Landkreis",
        "OBJECTID" : 24,
        "county" : "LK Peine",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 312,
        "cases_per_100k" : 231.45228892960699,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 14,
        "GEN" : "Wolfenbüttel",
        "cases7_per_100k" : 5.0157997692732099,
        "RS" : "03158",
        "EWZ" : 119622,
        "BEZ" : "Landkreis",
        "OBJECTID" : 25,
        "county" : "LK Wolfenbüttel",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 242,
        "cases_per_100k" : 202.30392402735299,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 81,
        "GEN" : "Göttingen",
        "cases7_per_100k" : 6.7476176309114502,
        "RS" : "03159",
        "EWZ" : 326041,
        "BEZ" : "Landkreis",
        "OBJECTID" : 26,
        "county" : "LK Göttingen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1482,
        "cases_per_100k" : 454.54406040958003,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 133,
        "GEN" : "Region Hannover",
        "cases7_per_100k" : 24.543800745820398,
        "RS" : "03241",
        "EWZ" : 1157115,
        "BEZ" : "Landkreis",
        "OBJECTID" : 27,
        "county" : "Region Hannover",
        "IBZ" : 45,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 4732,
        "cases_per_100k" : 408.948116652191,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 27,
        "GEN" : "Diepholz",
        "cases7_per_100k" : 11.0553736025317,
        "RS" : "03251",
        "EWZ" : 217089,
        "BEZ" : "Landkreis",
        "OBJECTID" : 28,
        "county" : "LK Diepholz",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 688,
        "cases_per_100k" : 316.92070993924199,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 7,
        "GEN" : "Hameln-Pyrmont",
        "cases7_per_100k" : 8.7513211128987702,
        "RS" : "03252",
        "EWZ" : 148549,
        "BEZ" : "Landkreis",
        "OBJECTID" : 29,
        "county" : "LK Hameln-Pyrmont",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 247,
        "cases_per_100k" : 166.275101145077,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 10,
        "GEN" : "Hildesheim",
        "cases7_per_100k" : 13.4146916252443,
        "RS" : "03254",
        "EWZ" : 275817,
        "BEZ" : "Landkreis",
        "OBJECTID" : 30,
        "county" : "LK Hildesheim",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 621,
        "cases_per_100k" : 225.14928376423501,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 7,
        "GEN" : "Holzminden",
        "cases7_per_100k" : 2.8385704958982698,
        "RS" : "03255",
        "EWZ" : 70458,
        "BEZ" : "Landkreis",
        "OBJECTID" : 31,
        "county" : "LK Holzminden",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 138,
        "cases_per_100k" : 195.86136421698001,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 4,
        "GEN" : "Nienburg (Weser)",
        "cases7_per_100k" : 10.7092841255458,
        "RS" : "03256",
        "EWZ" : 121390,
        "BEZ" : "Landkreis",
        "OBJECTID" : 32,
        "county" : "LK Nienburg (Weser)",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 135,
        "cases_per_100k" : 111.21179668836,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 7,
        "GEN" : "Schaumburg",
        "cases7_per_100k" : 6.3363325307312097,
        "RS" : "03257",
        "EWZ" : 157820,
        "BEZ" : "Landkreis",
        "OBJECTID" : 33,
        "county" : "LK Schaumburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 332,
        "cases_per_100k" : 210.366240020276,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 15,
        "GEN" : "Celle",
        "cases7_per_100k" : 10.6138728904928,
        "RS" : "03351",
        "EWZ" : 179011,
        "BEZ" : "Landkreis",
        "OBJECTID" : 34,
        "county" : "LK Celle",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 337,
        "cases_per_100k" : 188.256587584003,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 21,
        "GEN" : "Cuxhaven",
        "cases7_per_100k" : 3.02972156858785,
        "RS" : "03352",
        "EWZ" : 198038,
        "BEZ" : "Landkreis",
        "OBJECTID" : 35,
        "county" : "LK Cuxhaven",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 445,
        "cases_per_100k" : 224.704349670265,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 17,
        "GEN" : "Harburg",
        "cases7_per_100k" : 11.0049482963947,
        "RS" : "03353",
        "EWZ" : 254431,
        "BEZ" : "Landkreis",
        "OBJECTID" : 36,
        "county" : "LK Harburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 890,
        "cases_per_100k" : 349.80014227826001,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 3,
        "GEN" : "Lüchow-Dannenberg",
        "cases7_per_100k" : 2.06560356936297,
        "RS" : "03354",
        "EWZ" : 48412,
        "BEZ" : "Landkreis",
        "OBJECTID" : 37,
        "county" : "LK Lüchow-Dannenberg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 47,
        "cases_per_100k" : 97.083367760059502,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 0,
        "GEN" : "Lüneburg",
        "cases7_per_100k" : 11.404428176540501,
        "RS" : "03355",
        "EWZ" : 184139,
        "BEZ" : "Landkreis",
        "OBJECTID" : 38,
        "county" : "LK Lüneburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 267,
        "cases_per_100k" : 144.99915824458699,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 0,
        "GEN" : "Osterholz",
        "cases7_per_100k" : 17.554946984060098,
        "RS" : "03356",
        "EWZ" : 113928,
        "BEZ" : "Landkreis",
        "OBJECTID" : 39,
        "county" : "LK Osterholz",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 209,
        "cases_per_100k" : 183.44919598342801,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 3,
        "GEN" : "Rotenburg (Wümme)",
        "cases7_per_100k" : 21.9804374107045,
        "RS" : "03357",
        "EWZ" : 163782,
        "BEZ" : "Landkreis",
        "OBJECTID" : 40,
        "county" : "LK Rotenburg (Wümme)",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 339,
        "cases_per_100k" : 206.98245228413401,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 2,
        "GEN" : "Heidekreis",
        "cases7_per_100k" : 7.1086846800736501,
        "RS" : "03358",
        "EWZ" : 140673,
        "BEZ" : "Landkreis",
        "OBJECTID" : 41,
        "county" : "LK Heidekreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 134,
        "cases_per_100k" : 95.256374712986897,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 9,
        "GEN" : "Stade",
        "cases7_per_100k" : 6.8455640744797401,
        "RS" : "03359",
        "EWZ" : 204512,
        "BEZ" : "Landkreis",
        "OBJECTID" : 42,
        "county" : "LK Stade",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 388,
        "cases_per_100k" : 189.719918635581,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 0,
        "GEN" : "Uelzen",
        "cases7_per_100k" : 6.4942796220329297,
        "RS" : "03360",
        "EWZ" : 92389,
        "BEZ" : "Landkreis",
        "OBJECTID" : 43,
        "county" : "LK Uelzen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 104,
        "cases_per_100k" : 112.56751344857101,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 8,
        "GEN" : "Verden",
        "cases7_per_100k" : 17.501257902911799,
        "RS" : "03361",
        "EWZ" : 137133,
        "BEZ" : "Landkreis",
        "OBJECTID" : 44,
        "county" : "LK Verden",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 400,
        "cases_per_100k" : 291.68763171519601,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 4,
        "GEN" : "Delmenhorst",
        "cases7_per_100k" : 58.020345801261001,
        "RS" : "03401",
        "EWZ" : 77559,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 45,
        "county" : "SK Delmenhorst",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 241,
        "cases_per_100k" : 310.73118529119802,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 0,
        "GEN" : "Emden",
        "cases7_per_100k" : 2.00348606575441,
        "RS" : "03402",
        "EWZ" : 49913,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 46,
        "county" : "SK Emden",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 48,
        "cases_per_100k" : 96.167331156211802,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 3,
        "GEN" : "Oldenburg (Oldb)",
        "cases7_per_100k" : 7.0973580084813399,
        "RS" : "03403",
        "EWZ" : 169077,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 47,
        "county" : "SK Oldenburg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 327,
        "cases_per_100k" : 193.40300573111699,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 18,
        "GEN" : "Osnabrück",
        "cases7_per_100k" : 16.943921670670701,
        "RS" : "03404",
        "EWZ" : 165251,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 48,
        "county" : "SK Osnabrück",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 804,
        "cases_per_100k" : 486.53260797211499,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 1,
        "GEN" : "Wilhelmshaven",
        "cases7_per_100k" : 3.9427512518235202,
        "RS" : "03405",
        "EWZ" : 76089,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 49,
        "county" : "SK Wilhelmshaven",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 68,
        "cases_per_100k" : 89.369028374666499,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 5,
        "GEN" : "Ammerland",
        "cases7_per_100k" : 8.0090341905669593,
        "RS" : "03451",
        "EWZ" : 124859,
        "BEZ" : "Landkreis",
        "OBJECTID" : 50,
        "county" : "LK Ammerland",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 244,
        "cases_per_100k" : 195.42043424983399,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 9,
        "GEN" : "Aurich",
        "cases7_per_100k" : 22.6680864972008,
        "RS" : "03452",
        "EWZ" : 189694,
        "BEZ" : "Landkreis",
        "OBJECTID" : 51,
        "county" : "LK Aurich",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 261,
        "cases_per_100k" : 137.59001338998601,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 1,
        "GEN" : "Cloppenburg",
        "cases7_per_100k" : 80.266226081250494,
        "RS" : "03453",
        "EWZ" : 170682,
        "BEZ" : "Landkreis",
        "OBJECTID" : 52,
        "county" : "LK Cloppenburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 836,
        "cases_per_100k" : 489.7997445542,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 25,
        "GEN" : "Emsland",
        "cases7_per_100k" : 42.513625769986,
        "RS" : "03454",
        "EWZ" : 326954,
        "BEZ" : "Landkreis",
        "OBJECTID" : 53,
        "county" : "LK Emsland",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 954,
        "cases_per_100k" : 291.78416535659397,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 2,
        "GEN" : "Friesland",
        "cases7_per_100k" : 2.0262603339276999,
        "RS" : "03455",
        "EWZ" : 98704,
        "BEZ" : "Landkreis",
        "OBJECTID" : 54,
        "county" : "LK Friesland",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 118,
        "cases_per_100k" : 119.54935970173401,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 18,
        "GEN" : "Grafschaft Bentheim",
        "cases7_per_100k" : 41.5566993773786,
        "RS" : "03456",
        "EWZ" : 137162,
        "BEZ" : "Landkreis",
        "OBJECTID" : 55,
        "county" : "LK Grafschaft Bentheim",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 380,
        "cases_per_100k" : 277.044662515857,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 6,
        "GEN" : "Leer",
        "cases7_per_100k" : 18.7401906814402,
        "RS" : "03457",
        "EWZ" : 170756,
        "BEZ" : "Landkreis",
        "OBJECTID" : 56,
        "county" : "LK Leer",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 281,
        "cases_per_100k" : 164.562299421397,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 14,
        "GEN" : "Oldenburg",
        "cases7_per_100k" : 42.020016808006702,
        "RS" : "03458",
        "EWZ" : 130890,
        "BEZ" : "Landkreis",
        "OBJECTID" : 57,
        "county" : "LK Oldenburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 554,
        "cases_per_100k" : 423.25616930246798,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 67,
        "GEN" : "Osnabrück",
        "cases7_per_100k" : 24.854781054513001,
        "RS" : "03459",
        "EWZ" : 358080,
        "BEZ" : "Landkreis",
        "OBJECTID" : 58,
        "county" : "LK Osnabrück",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1578,
        "cases_per_100k" : 440.68364611260102,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 14,
        "GEN" : "Vechta",
        "cases7_per_100k" : 36.4109961208285,
        "RS" : "03460",
        "EWZ" : 142814,
        "BEZ" : "Landkreis",
        "OBJECTID" : 59,
        "county" : "LK Vechta",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 780,
        "cases_per_100k" : 546.16494181242695,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 8,
        "GEN" : "Wesermarsch",
        "cases7_per_100k" : 56.444238736552201,
        "RS" : "03461",
        "EWZ" : 88583,
        "BEZ" : "Landkreis",
        "OBJECTID" : 60,
        "county" : "LK Wesermarsch",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 234,
        "cases_per_100k" : 264.159037287064,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 0,
        "GEN" : "Wittmund",
        "cases7_per_100k" : 10.5399992973334,
        "RS" : "03462",
        "EWZ" : 56926,
        "BEZ" : "Landkreis",
        "OBJECTID" : 61,
        "county" : "LK Wittmund",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 83,
        "cases_per_100k" : 145.80332361311201,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "4",
        "deaths" : 54,
        "GEN" : "Bremen",
        "cases7_per_100k" : 56.205610341832298,
        "RS" : "04011",
        "EWZ" : 567559,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 62,
        "county" : "SK Bremen",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2596,
        "cases_per_100k" : 457.39738071284199,
        "BL" : "Bremen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "4",
        "deaths" : 6,
        "GEN" : "Bremerhaven",
        "cases7_per_100k" : 6.1596402770078198,
        "RS" : "04012",
        "EWZ" : 113643,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 63,
        "county" : "SK Bremerhaven",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 284,
        "cases_per_100k" : 249.90540552431699,
        "BL" : "Bremen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 52,
        "GEN" : "Düsseldorf",
        "cases7_per_100k" : 44.542570315351803,
        "RS" : "05111",
        "EWZ" : 621877,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 64,
        "county" : "SK Düsseldorf",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 3551,
        "cases_per_100k" : 571.01323895239705,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 74,
        "GEN" : "Duisburg",
        "cases7_per_100k" : 43.714882711766499,
        "RS" : "05112",
        "EWZ" : 498686,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 65,
        "county" : "SK Duisburg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 3167,
        "cases_per_100k" : 635.06896123011302,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 49,
        "GEN" : "Essen",
        "cases7_per_100k" : 47.360834648912103,
        "RS" : "05113",
        "EWZ" : 582760,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 66,
        "county" : "SK Essen",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2424,
        "cases_per_100k" : 415.95167822088001,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 28,
        "GEN" : "Krefeld",
        "cases7_per_100k" : 20.227159798959601,
        "RS" : "05114",
        "EWZ" : 227417,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 67,
        "county" : "SK Krefeld",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1077,
        "cases_per_100k" : 473.579371814772,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 51,
        "GEN" : "Mönchengladbach",
        "cases7_per_100k" : 22.9855114659393,
        "RS" : "05116",
        "EWZ" : 261034,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 68,
        "county" : "SK Mönchengladbach",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1165,
        "cases_per_100k" : 446.30201429698798,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 15,
        "GEN" : "Mülheim an der Ruhr",
        "cases7_per_100k" : 15.8235266538516,
        "RS" : "05117",
        "EWZ" : 170632,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 69,
        "county" : "SK Mülheim a.d.Ruhr",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 678,
        "cases_per_100k" : 397.34633597449499,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 14,
        "GEN" : "Oberhausen",
        "cases7_per_100k" : 21.3508948397259,
        "RS" : "05119",
        "EWZ" : 210764,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 70,
        "county" : "SK Oberhausen",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 672,
        "cases_per_100k" : 318.84002960657398,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 19,
        "GEN" : "Remscheid",
        "cases7_per_100k" : 51.195458872981398,
        "RS" : "05120",
        "EWZ" : 111338,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 71,
        "county" : "SK Remscheid",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 618,
        "cases_per_100k" : 555.06655409653501,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 13,
        "GEN" : "Solingen",
        "cases7_per_100k" : 47.725203303086403,
        "RS" : "05122",
        "EWZ" : 159245,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 72,
        "county" : "SK Solingen",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 750,
        "cases_per_100k" : 470.9724010173,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 88,
        "GEN" : "Wuppertal",
        "cases7_per_100k" : 55.195719515629399,
        "RS" : "05124",
        "EWZ" : 355100,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 73,
        "county" : "SK Wuppertal",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2011,
        "cases_per_100k" : 566.31934666291204,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 37,
        "GEN" : "Kleve",
        "cases7_per_100k" : 26.883010897220501,
        "RS" : "05154",
        "EWZ" : 312465,
        "BEZ" : "Kreis",
        "OBJECTID" : 74,
        "county" : "LK Kleve",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1237,
        "cases_per_100k" : 395.88433904597298,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 88,
        "GEN" : "Mettmann",
        "cases7_per_100k" : 40.982762526515202,
        "RS" : "05158",
        "EWZ" : 485570,
        "BEZ" : "Kreis",
        "OBJECTID" : 75,
        "county" : "LK Mettmann",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2269,
        "cases_per_100k" : 467.28587021438699,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 25,
        "GEN" : "Rhein-Kreis Neuss",
        "cases7_per_100k" : 19.480663228034398,
        "RS" : "05162",
        "EWZ" : 451730,
        "BEZ" : "Kreis",
        "OBJECTID" : 76,
        "county" : "LK Rhein-Kreis Neuss",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1523,
        "cases_per_100k" : 337.148296548823,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 37,
        "GEN" : "Viersen",
        "cases7_per_100k" : 20.745291320772399,
        "RS" : "05166",
        "EWZ" : 298863,
        "BEZ" : "Kreis",
        "OBJECTID" : 77,
        "county" : "LK Viersen",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1104,
        "cases_per_100k" : 369.40002609891502,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 32,
        "GEN" : "Wesel",
        "cases7_per_100k" : 18.914030297232902,
        "RS" : "05170",
        "EWZ" : 459976,
        "BEZ" : "Kreis",
        "OBJECTID" : 78,
        "county" : "LK Wesel",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1505,
        "cases_per_100k" : 327.19098387742002,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 9,
        "GEN" : "Bonn",
        "cases7_per_100k" : 30.333087635323501,
        "RS" : "05314",
        "EWZ" : 329673,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 79,
        "county" : "SK Bonn",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1395,
        "cases_per_100k" : 423.14657251276299,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 126,
        "GEN" : "Köln",
        "cases7_per_100k" : 54.786310408571701,
        "RS" : "05315",
        "EWZ" : 1087863,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 80,
        "county" : "SK Köln",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 5837,
        "cases_per_100k" : 536.55653331347798,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 9,
        "GEN" : "Leverkusen",
        "cases7_per_100k" : 42.142809154151102,
        "RS" : "05316",
        "EWZ" : 163729,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 81,
        "county" : "SK Leverkusen",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 674,
        "cases_per_100k" : 411.65584594054798,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 109,
        "GEN" : "Städteregion Aachen",
        "cases7_per_100k" : 34.109718397345901,
        "RS" : "05334",
        "EWZ" : 557026,
        "BEZ" : "Kreis",
        "OBJECTID" : 82,
        "county" : "StadtRegion Aachen",
        "IBZ" : 46,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 3028,
        "cases_per_100k" : 543.60119635349201,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 42,
        "GEN" : "Düren",
        "cases7_per_100k" : 29.474225167965301,
        "RS" : "05358",
        "EWZ" : 264638,
        "BEZ" : "Kreis",
        "OBJECTID" : 83,
        "county" : "LK Düren",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1107,
        "cases_per_100k" : 418.30727257612301,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 80,
        "GEN" : "Rhein-Erft-Kreis",
        "cases7_per_100k" : 38.885288399222297,
        "RS" : "05362",
        "EWZ" : 470615,
        "BEZ" : "Kreis",
        "OBJECTID" : 84,
        "county" : "LK Rhein-Erft-Kreis",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1969,
        "cases_per_100k" : 418.38870414245201,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 27,
        "GEN" : "Euskirchen",
        "cases7_per_100k" : 11.8767298715248,
        "RS" : "05366",
        "EWZ" : 193656,
        "BEZ" : "Kreis",
        "OBJECTID" : 85,
        "county" : "LK Euskirchen",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 801,
        "cases_per_100k" : 413.62002726484099,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 95,
        "GEN" : "Heinsberg",
        "cases7_per_100k" : 17.2174287335407,
        "RS" : "05370",
        "EWZ" : 255555,
        "BEZ" : "Kreis",
        "OBJECTID" : 86,
        "county" : "LK Heinsberg",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2231,
        "cases_per_100k" : 873.00189783021301,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 19,
        "GEN" : "Oberbergischer Kreis",
        "cases7_per_100k" : 29.405602502416802,
        "RS" : "05374",
        "EWZ" : 272057,
        "BEZ" : "Kreis",
        "OBJECTID" : 87,
        "county" : "LK Oberbergischer Kreis",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 983,
        "cases_per_100k" : 361.321340748446,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 22,
        "GEN" : "Rheinisch-Bergischer Kreis",
        "cases7_per_100k" : 32.1247144960127,
        "RS" : "05378",
        "EWZ" : 283271,
        "BEZ" : "Kreis",
        "OBJECTID" : 88,
        "county" : "LK Rheinisch-Bergischer Kreis",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 878,
        "cases_per_100k" : 309.95054206043,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 54,
        "GEN" : "Rhein-Sieg-Kreis",
        "cases7_per_100k" : 28.1308467218409,
        "RS" : "05382",
        "EWZ" : 600764,
        "BEZ" : "Kreis",
        "OBJECTID" : 89,
        "county" : "LK Rhein-Sieg-Kreis",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2359,
        "cases_per_100k" : 392.66667110545899,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 7,
        "GEN" : "Bottrop",
        "cases7_per_100k" : 17.862459065197999,
        "RS" : "05512",
        "EWZ" : 117565,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 90,
        "county" : "SK Bottrop",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 401,
        "cases_per_100k" : 341.08790881639902,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 19,
        "GEN" : "Gelsenkirchen",
        "cases7_per_100k" : 48.912938820312299,
        "RS" : "05513",
        "EWZ" : 259645,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 91,
        "county" : "SK Gelsenkirchen",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1347,
        "cases_per_100k" : 518.78526449575395,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 13,
        "GEN" : "Münster",
        "cases7_per_100k" : 21.2500753267596,
        "RS" : "05515",
        "EWZ" : 315293,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 92,
        "county" : "SK Münster",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1166,
        "cases_per_100k" : 369.814743746293,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 38,
        "GEN" : "Borken",
        "cases7_per_100k" : 20.735769741395298,
        "RS" : "05554",
        "EWZ" : 371339,
        "BEZ" : "Kreis",
        "OBJECTID" : 93,
        "county" : "LK Borken",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1479,
        "cases_per_100k" : 398.28835646134701,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 25,
        "GEN" : "Coesfeld",
        "cases7_per_100k" : 29.013627338090402,
        "RS" : "05558",
        "EWZ" : 220586,
        "BEZ" : "Kreis",
        "OBJECTID" : 94,
        "county" : "LK Coesfeld",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1048,
        "cases_per_100k" : 475.09814766122997,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 47,
        "GEN" : "Recklinghausen",
        "cases7_per_100k" : 52.268467784875398,
        "RS" : "05562",
        "EWZ" : 614137,
        "BEZ" : "Kreis",
        "OBJECTID" : 95,
        "county" : "LK Recklinghausen",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2629,
        "cases_per_100k" : 428.08037945930602,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 93,
        "GEN" : "Steinfurt",
        "cases7_per_100k" : 19.633215831511301,
        "RS" : "05566",
        "EWZ" : 448220,
        "BEZ" : "Kreis",
        "OBJECTID" : 96,
        "county" : "LK Steinfurt",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1952,
        "cases_per_100k" : 435.500423898978,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 21,
        "GEN" : "Warendorf",
        "cases7_per_100k" : 29.873308378923099,
        "RS" : "05570",
        "EWZ" : 277840,
        "BEZ" : "Kreis",
        "OBJECTID" : 97,
        "county" : "LK Warendorf",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1163,
        "cases_per_100k" : 418.58623668298299,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 9,
        "GEN" : "Bielefeld",
        "cases7_per_100k" : 23.339666960906101,
        "RS" : "05711",
        "EWZ" : 334195,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 98,
        "county" : "SK Bielefeld",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1046,
        "cases_per_100k" : 312.99091847573999,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 21,
        "GEN" : "Gütersloh",
        "cases7_per_100k" : 26.305838251977001,
        "RS" : "05754",
        "EWZ" : 364938,
        "BEZ" : "Kreis",
        "OBJECTID" : 99,
        "county" : "LK Gütersloh",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 3132,
        "cases_per_100k" : 858.22797297075101,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 8,
        "GEN" : "Herford",
        "cases7_per_100k" : 26.738181324777099,
        "RS" : "05758",
        "EWZ" : 250578,
        "BEZ" : "Kreis",
        "OBJECTID" : 100,
        "county" : "LK Herford",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 721,
        "cases_per_100k" : 287.73475724125802,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 19,
        "GEN" : "Höxter",
        "cases7_per_100k" : 7.8430813327534201,
        "RS" : "05762",
        "EWZ" : 140251,
        "BEZ" : "Kreis",
        "OBJECTID" : 101,
        "county" : "LK Höxter",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 456,
        "cases_per_100k" : 325.13137161232402,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 31,
        "GEN" : "Lippe",
        "cases7_per_100k" : 14.6756677428823,
        "RS" : "05766",
        "EWZ" : 347514,
        "BEZ" : "Kreis",
        "OBJECTID" : 102,
        "county" : "LK Lippe",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1064,
        "cases_per_100k" : 306.17471526327,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 15,
        "GEN" : "Minden-Lübbecke",
        "cases7_per_100k" : 14.819157949672899,
        "RS" : "05770",
        "EWZ" : 310409,
        "BEZ" : "Kreis",
        "OBJECTID" : 103,
        "county" : "LK Minden-Lübbecke",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 991,
        "cases_per_100k" : 319.25620713316903,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 34,
        "GEN" : "Paderborn",
        "cases7_per_100k" : 7.4714379919373402,
        "RS" : "05774",
        "EWZ" : 307839,
        "BEZ" : "Kreis",
        "OBJECTID" : 104,
        "county" : "LK Paderborn",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 934,
        "cases_per_100k" : 303.40535149867299,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 28,
        "GEN" : "Bochum",
        "cases7_per_100k" : 38.0210456061074,
        "RS" : "05911",
        "EWZ" : 365587,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 105,
        "county" : "SK Bochum",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1500,
        "cases_per_100k" : 410.29905330331798,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 21,
        "GEN" : "Dortmund",
        "cases7_per_100k" : 31.1092222694433,
        "RS" : "05913",
        "EWZ" : 588250,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 106,
        "county" : "SK Dortmund",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2317,
        "cases_per_100k" : 393.88015299617501,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 14,
        "GEN" : "Hagen",
        "cases7_per_100k" : 55.1180267746415,
        "RS" : "05914",
        "EWZ" : 188686,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 107,
        "county" : "SK Hagen",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 920,
        "cases_per_100k" : 487.58254454490498,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 38,
        "GEN" : "Hamm",
        "cases7_per_100k" : 64.474532559638902,
        "RS" : "05915",
        "EWZ" : 179916,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 108,
        "county" : "SK Hamm",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1264,
        "cases_per_100k" : 702.55007892572098,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 8,
        "GEN" : "Herne",
        "cases7_per_100k" : 66.475337010783093,
        "RS" : "05916",
        "EWZ" : 156449,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 109,
        "county" : "SK Herne",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 678,
        "cases_per_100k" : 433.36806243568202,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 15,
        "GEN" : "Ennepe-Ruhr-Kreis",
        "cases7_per_100k" : 13.2672644134944,
        "RS" : "05954",
        "EWZ" : 324106,
        "BEZ" : "Kreis",
        "OBJECTID" : 110,
        "county" : "LK Ennepe-Ruhr-Kreis",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 950,
        "cases_per_100k" : 293.11398122836403,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 19,
        "GEN" : "Hochsauerlandkreis",
        "cases7_per_100k" : 11.548366483560899,
        "RS" : "05958",
        "EWZ" : 259777,
        "BEZ" : "Kreis",
        "OBJECTID" : 111,
        "county" : "LK Hochsauerlandkreis",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 926,
        "cases_per_100k" : 356.45957879257998,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 32,
        "GEN" : "Märkischer Kreis",
        "cases7_per_100k" : 28.764912657049098,
        "RS" : "05962",
        "EWZ" : 410222,
        "BEZ" : "Kreis",
        "OBJECTID" : 112,
        "county" : "LK Märkischer Kreis",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1252,
        "cases_per_100k" : 305.20059870021601,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 57,
        "GEN" : "Olpe",
        "cases7_per_100k" : 26.128177372998401,
        "RS" : "05966",
        "EWZ" : 133955,
        "BEZ" : "Kreis",
        "OBJECTID" : 113,
        "county" : "LK Olpe",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 843,
        "cases_per_100k" : 629.315815012504,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 8,
        "GEN" : "Siegen-Wittgenstein",
        "cases7_per_100k" : 26.3591195331908,
        "RS" : "05970",
        "EWZ" : 276944,
        "BEZ" : "Kreis",
        "OBJECTID" : 114,
        "county" : "LK Siegen-Wittgenstein",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 817,
        "cases_per_100k" : 295.00548847420401,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 9,
        "GEN" : "Soest",
        "cases7_per_100k" : 24.1894063654589,
        "RS" : "05974",
        "EWZ" : 301785,
        "BEZ" : "Kreis",
        "OBJECTID" : 115,
        "county" : "LK Soest",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 651,
        "cases_per_100k" : 215.71648690292801,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 42,
        "GEN" : "Unna",
        "cases7_per_100k" : 40.770744331980197,
        "RS" : "05978",
        "EWZ" : 394891,
        "BEZ" : "Kreis",
        "OBJECTID" : 116,
        "county" : "LK Unna",
        "IBZ" : 42,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1558,
        "cases_per_100k" : 394.53925260388303,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 18,
        "GEN" : "Darmstadt",
        "cases7_per_100k" : 35.026707864746903,
        "RS" : "06411",
        "EWZ" : 159878,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 117,
        "county" : "SK Darmstadt",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 506,
        "cases_per_100k" : 316.491324635034,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 72,
        "GEN" : "Frankfurt am Main",
        "cases7_per_100k" : 65.2361864340171,
        "RS" : "06412",
        "EWZ" : 763380,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 118,
        "county" : "SK Frankfurt am Main",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 4134,
        "cases_per_100k" : 541.53894521732298,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 10,
        "GEN" : "Offenbach am Main",
        "cases7_per_100k" : 70.617132330365393,
        "RS" : "06413",
        "EWZ" : 130280,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 119,
        "county" : "SK Offenbach",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 702,
        "cases_per_100k" : 538.83942278170105,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 22,
        "GEN" : "Wiesbaden",
        "cases7_per_100k" : 38.423694851224901,
        "RS" : "06414",
        "EWZ" : 278474,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 120,
        "county" : "SK Wiesbaden",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1202,
        "cases_per_100k" : 431.638142160489,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 3,
        "GEN" : "Bergstraße",
        "cases7_per_100k" : 19.6049419249834,
        "RS" : "06431",
        "EWZ" : 270340,
        "BEZ" : "Landkreis",
        "OBJECTID" : 121,
        "county" : "LK Bergstraße",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 705,
        "cases_per_100k" : 260.78271805874101,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 22,
        "GEN" : "Darmstadt-Dieburg",
        "cases7_per_100k" : 18.466042626341299,
        "RS" : "06432",
        "EWZ" : 297844,
        "BEZ" : "Landkreis",
        "OBJECTID" : 122,
        "county" : "LK Darmstadt-Dieburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 800,
        "cases_per_100k" : 268.596983655874,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 17,
        "GEN" : "Groß-Gerau",
        "cases7_per_100k" : 43.158788072216602,
        "RS" : "06433",
        "EWZ" : 275726,
        "BEZ" : "Landkreis",
        "OBJECTID" : 123,
        "county" : "LK Groß-Gerau",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1292,
        "cases_per_100k" : 468.58112764120898,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 6,
        "GEN" : "Hochtaunuskreis",
        "cases7_per_100k" : 25.747739686130799,
        "RS" : "06434",
        "EWZ" : 236914,
        "BEZ" : "Landkreis",
        "OBJECTID" : 124,
        "county" : "LK Hochtaunuskreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 597,
        "cases_per_100k" : 251.99017364951001,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 55,
        "GEN" : "Main-Kinzig-Kreis",
        "cases7_per_100k" : 22.589358747550801,
        "RS" : "06435",
        "EWZ" : 420552,
        "BEZ" : "Landkreis",
        "OBJECTID" : 125,
        "county" : "LK Main-Kinzig-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1523,
        "cases_per_100k" : 362.143088131789,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 17,
        "GEN" : "Main-Taunus-Kreis",
        "cases7_per_100k" : 39.403415521592201,
        "RS" : "06436",
        "EWZ" : 238558,
        "BEZ" : "Landkreis",
        "OBJECTID" : 126,
        "county" : "LK Main-Taunus-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 866,
        "cases_per_100k" : 363.01444512445602,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 63,
        "GEN" : "Odenwaldkreis",
        "cases7_per_100k" : 7.2386585731569904,
        "RS" : "06437",
        "EWZ" : 96703,
        "BEZ" : "Landkreis",
        "OBJECTID" : 127,
        "county" : "LK Odenwaldkreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 500,
        "cases_per_100k" : 517.04704093978501,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 46,
        "GEN" : "Offenbach",
        "cases7_per_100k" : 39.627557171885201,
        "RS" : "06438",
        "EWZ" : 355813,
        "BEZ" : "Landkreis",
        "OBJECTID" : 128,
        "county" : "LK Offenbach",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1484,
        "cases_per_100k" : 417.07301307147299,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 8,
        "GEN" : "Rheingau-Taunus-Kreis",
        "cases7_per_100k" : 16.5633682410772,
        "RS" : "06439",
        "EWZ" : 187160,
        "BEZ" : "Landkreis",
        "OBJECTID" : 129,
        "county" : "LK Rheingau-Taunus-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 558,
        "cases_per_100k" : 298.14062833938902,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 13,
        "GEN" : "Wetteraukreis",
        "cases7_per_100k" : 18.486146741086898,
        "RS" : "06440",
        "EWZ" : 308339,
        "BEZ" : "Landkreis",
        "OBJECTID" : 130,
        "county" : "LK Wetteraukreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 694,
        "cases_per_100k" : 225.07694453183001,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 6,
        "GEN" : "Gießen",
        "cases7_per_100k" : 26.968317768057702,
        "RS" : "06531",
        "EWZ" : 270688,
        "BEZ" : "Landkreis",
        "OBJECTID" : 131,
        "county" : "LK Gießen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 568,
        "cases_per_100k" : 209.83567797612,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 23,
        "GEN" : "Lahn-Dill-Kreis",
        "cases7_per_100k" : 20.527477212526499,
        "RS" : "06532",
        "EWZ" : 253319,
        "BEZ" : "Landkreis",
        "OBJECTID" : 132,
        "county" : "LK Lahn-Dill-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 598,
        "cases_per_100k" : 236.065987944055,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 7,
        "GEN" : "Limburg-Weilburg",
        "cases7_per_100k" : 14.542323979710501,
        "RS" : "06533",
        "EWZ" : 171912,
        "BEZ" : "Landkreis",
        "OBJECTID" : 133,
        "county" : "LK Limburg-Weilburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 520,
        "cases_per_100k" : 302.480338777979,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 4,
        "GEN" : "Marburg-Biedenkopf",
        "cases7_per_100k" : 41.686228165320301,
        "RS" : "06534",
        "EWZ" : 247084,
        "BEZ" : "Landkreis",
        "OBJECTID" : 134,
        "county" : "LK Marburg-Biedenkopf",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 586,
        "cases_per_100k" : 237.16630781434699,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 6,
        "GEN" : "Vogelsbergkreis",
        "cases7_per_100k" : 3.7863370029249501,
        "RS" : "06535",
        "EWZ" : 105643,
        "BEZ" : "Landkreis",
        "OBJECTID" : 135,
        "county" : "LK Vogelsbergkreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 195,
        "cases_per_100k" : 184.58392889259099,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 9,
        "GEN" : "Kassel",
        "cases7_per_100k" : 24.240985074479202,
        "RS" : "06611",
        "EWZ" : 202137,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 136,
        "county" : "SK Kassel",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 643,
        "cases_per_100k" : 318.10108985490001,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 17,
        "GEN" : "Fulda",
        "cases7_per_100k" : 8.0665038427928,
        "RS" : "06631",
        "EWZ" : 223145,
        "BEZ" : "Landkreis",
        "OBJECTID" : 137,
        "county" : "LK Fulda",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 645,
        "cases_per_100k" : 289.04972103340901,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 23,
        "GEN" : "Hersfeld-Rotenburg",
        "cases7_per_100k" : 1.6567400326377799,
        "RS" : "06632",
        "EWZ" : 120719,
        "BEZ" : "Landkreis",
        "OBJECTID" : 138,
        "county" : "LK Hersfeld-Rotenburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 383,
        "cases_per_100k" : 317.26571625013497,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 32,
        "GEN" : "Kassel",
        "cases7_per_100k" : 9.2919531685560308,
        "RS" : "06633",
        "EWZ" : 236764,
        "BEZ" : "Landkreis",
        "OBJECTID" : 139,
        "county" : "LK Kassel",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 596,
        "cases_per_100k" : 251.727458566336,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 39,
        "GEN" : "Schwalm-Eder-Kreis",
        "cases7_per_100k" : 8.3484997745905094,
        "RS" : "06634",
        "EWZ" : 179673,
        "BEZ" : "Landkreis",
        "OBJECTID" : 140,
        "county" : "LK Schwalm-Eder-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 706,
        "cases_per_100k" : 392.93605605739299,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 5,
        "GEN" : "Waldeck-Frankenberg",
        "cases7_per_100k" : 12.147871565029501,
        "RS" : "06635",
        "EWZ" : 156406,
        "BEZ" : "Landkreis",
        "OBJECTID" : 141,
        "county" : "LK Waldeck-Frankenberg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 283,
        "cases_per_100k" : 180.93935015280701,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 16,
        "GEN" : "Werra-Meißner-Kreis",
        "cases7_per_100k" : 34.7812260879071,
        "RS" : "06636",
        "EWZ" : 100629,
        "BEZ" : "Landkreis",
        "OBJECTID" : 142,
        "county" : "LK Werra-Meißner-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 300,
        "cases_per_100k" : 298.12479503920298,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 20,
        "GEN" : "Koblenz",
        "cases7_per_100k" : 13.1518956265563,
        "RS" : "07111",
        "EWZ" : 114052,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 143,
        "county" : "SK Koblenz",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 371,
        "cases_per_100k" : 325.29021849682601,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 3,
        "GEN" : "Ahrweiler",
        "cases7_per_100k" : 15.3744445981889,
        "RS" : "07131",
        "EWZ" : 130086,
        "BEZ" : "Landkreis",
        "OBJECTID" : 144,
        "county" : "LK Ahrweiler",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 384,
        "cases_per_100k" : 295.189336285227,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 12,
        "GEN" : "Altenkirchen (Westerwald)",
        "cases7_per_100k" : 14.7509801638135,
        "RS" : "07132",
        "EWZ" : 128805,
        "BEZ" : "Landkreis",
        "OBJECTID" : 145,
        "county" : "LK Altenkirchen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 282,
        "cases_per_100k" : 218.935600326074,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 7,
        "GEN" : "Bad Kreuznach",
        "cases7_per_100k" : 23.3666992958414,
        "RS" : "07133",
        "EWZ" : 158345,
        "BEZ" : "Landkreis",
        "OBJECTID" : 146,
        "county" : "LK Bad Kreuznach",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 379,
        "cases_per_100k" : 239.350784679024,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 3,
        "GEN" : "Birkenfeld",
        "cases7_per_100k" : 9.8825215253671992,
        "RS" : "07134",
        "EWZ" : 80951,
        "BEZ" : "Landkreis",
        "OBJECTID" : 147,
        "county" : "LK Birkenfeld",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 136,
        "cases_per_100k" : 168.00286593124201,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 1,
        "GEN" : "Cochem-Zell",
        "cases7_per_100k" : 1.62932790224033,
        "RS" : "07135",
        "EWZ" : 61375,
        "BEZ" : "Landkreis",
        "OBJECTID" : 148,
        "county" : "LK Cochem-Zell",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 174,
        "cases_per_100k" : 283.50305498981697,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 17,
        "GEN" : "Mayen-Koblenz",
        "cases7_per_100k" : 14.4566626561086,
        "RS" : "07137",
        "EWZ" : 214434,
        "BEZ" : "Landkreis",
        "OBJECTID" : 149,
        "county" : "LK Mayen-Koblenz",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 531,
        "cases_per_100k" : 247.62864098044199,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 5,
        "GEN" : "Neuwied",
        "cases7_per_100k" : 47.043121037574302,
        "RS" : "07138",
        "EWZ" : 182811,
        "BEZ" : "Landkreis",
        "OBJECTID" : 150,
        "county" : "LK Neuwied",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 545,
        "cases_per_100k" : 298.12210424974398,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 6,
        "GEN" : "Rhein-Hunsrück-Kreis",
        "cases7_per_100k" : 4.8466989133701004,
        "RS" : "07140",
        "EWZ" : 103163,
        "BEZ" : "Landkreis",
        "OBJECTID" : 151,
        "county" : "LK Rhein-Hunsrück-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 234,
        "cases_per_100k" : 226.82550914572101,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 6,
        "GEN" : "Rhein-Lahn-Kreis",
        "cases7_per_100k" : 11.4475416404327,
        "RS" : "07141",
        "EWZ" : 122297,
        "BEZ" : "Landkreis",
        "OBJECTID" : 152,
        "county" : "LK Rhein-Lahn-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 225,
        "cases_per_100k" : 183.97834779266901,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 22,
        "GEN" : "Westerwaldkreis",
        "cases7_per_100k" : 13.86797686029,
        "RS" : "07143",
        "EWZ" : 201904,
        "BEZ" : "Landkreis",
        "OBJECTID" : 153,
        "county" : "LK Westerwaldkreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 626,
        "cases_per_100k" : 310.048339805056,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 1,
        "GEN" : "Trier",
        "cases7_per_100k" : 22.415895559859401,
        "RS" : "07211",
        "EWZ" : 111528,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 154,
        "county" : "SK Trier",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 246,
        "cases_per_100k" : 220.57241230901701,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 2,
        "GEN" : "Bernkastel-Wittlich",
        "cases7_per_100k" : 18.669487833717099,
        "RS" : "07231",
        "EWZ" : 112483,
        "BEZ" : "Landkreis",
        "OBJECTID" : 155,
        "county" : "LK Bernkastel-Wittlich",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 291,
        "cases_per_100k" : 258.70575998150798,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 6,
        "GEN" : "Eifelkreis Bitburg-Prüm",
        "cases7_per_100k" : 41.389892790082598,
        "RS" : "07232",
        "EWZ" : 99058,
        "BEZ" : "Landkreis",
        "OBJECTID" : 156,
        "county" : "LK Bitburg-Prüm",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 355,
        "cases_per_100k" : 358.37590098729999,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 5,
        "GEN" : "Vulkaneifel",
        "cases7_per_100k" : 4.9467400982752396,
        "RS" : "07233",
        "EWZ" : 60646,
        "BEZ" : "Landkreis",
        "OBJECTID" : 157,
        "county" : "LK Vulkaneifel",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 150,
        "cases_per_100k" : 247.337004913762,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 11,
        "GEN" : "Trier-Saarburg",
        "cases7_per_100k" : 12.0483540609647,
        "RS" : "07235",
        "EWZ" : 149398,
        "BEZ" : "Landkreis",
        "OBJECTID" : 158,
        "county" : "LK Trier-Saarburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 430,
        "cases_per_100k" : 287.82179145637798,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 2,
        "GEN" : "Frankenthal (Pfalz)",
        "cases7_per_100k" : 22.558549690332601,
        "RS" : "07311",
        "EWZ" : 48762,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 159,
        "county" : "SK Frankenthal",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 98,
        "cases_per_100k" : 200.97616996841799,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 6,
        "GEN" : "Kaiserslautern",
        "cases7_per_100k" : 14.9955013495951,
        "RS" : "07312",
        "EWZ" : 100030,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 160,
        "county" : "SK Kaiserslautern",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 325,
        "cases_per_100k" : 324.90252924122802,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 2,
        "GEN" : "Landau in der Pfalz",
        "cases7_per_100k" : 14.9314221113031,
        "RS" : "07313",
        "EWZ" : 46881,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 161,
        "county" : "SK Landau i.d.Pfalz",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 97,
        "cases_per_100k" : 206.90684925662799,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 2,
        "GEN" : "Ludwigshafen am Rhein",
        "cases7_per_100k" : 16.835700974729001,
        "RS" : "07314",
        "EWZ" : 172253,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 162,
        "county" : "SK Ludwigshafen",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 680,
        "cases_per_100k" : 394.76816078675,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 28,
        "GEN" : "Mainz",
        "cases7_per_100k" : 40.717730055174798,
        "RS" : "07315",
        "EWZ" : 218578,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 163,
        "county" : "SK Mainz",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1152,
        "cases_per_100k" : 527.04297779282501,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 2,
        "GEN" : "Neustadt an der Weinstraße",
        "cases7_per_100k" : 3.7548813457494701,
        "RS" : "07316",
        "EWZ" : 53264,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 164,
        "county" : "SK Neustadt a.d.Weinstraße",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 161,
        "cases_per_100k" : 302.26794833283299,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 0,
        "GEN" : "Pirmasens",
        "cases7_per_100k" : 7.4569361934826404,
        "RS" : "07317",
        "EWZ" : 40231,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 165,
        "county" : "SK Pirmasens",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 54,
        "cases_per_100k" : 134.224851482687,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 1,
        "GEN" : "Speyer",
        "cases7_per_100k" : 9.8890449160420104,
        "RS" : "07318",
        "EWZ" : 50561,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 166,
        "county" : "SK Speyer",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 173,
        "cases_per_100k" : 342.16095409505402,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 8,
        "GEN" : "Worms",
        "cases7_per_100k" : 15.561035167939499,
        "RS" : "07319",
        "EWZ" : 83542,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 167,
        "county" : "SK Worms",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 343,
        "cases_per_100k" : 410.57192789255703,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 1,
        "GEN" : "Zweibrücken",
        "cases7_per_100k" : 8.7737256163542305,
        "RS" : "07320",
        "EWZ" : 34193,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 168,
        "county" : "SK Zweibrücken",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 67,
        "cases_per_100k" : 195.94653876524399,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 11,
        "GEN" : "Alzey-Worms",
        "cases7_per_100k" : 18.506095445187299,
        "RS" : "07331",
        "EWZ" : 129687,
        "BEZ" : "Landkreis",
        "OBJECTID" : 169,
        "county" : "LK Alzey-Worms",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 417,
        "cases_per_100k" : 321.54340836012898,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 12,
        "GEN" : "Bad Dürkheim",
        "cases7_per_100k" : 14.3211402642627,
        "RS" : "07332",
        "EWZ" : 132671,
        "BEZ" : "Landkreis",
        "OBJECTID" : 170,
        "county" : "LK Bad Dürkheim",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 408,
        "cases_per_100k" : 307.52764356943101,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 9,
        "GEN" : "Donnersbergkreis",
        "cases7_per_100k" : 11.9482243611019,
        "RS" : "07333",
        "EWZ" : 75325,
        "BEZ" : "Landkreis",
        "OBJECTID" : 171,
        "county" : "LK Donnersbergkreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 193,
        "cases_per_100k" : 256.22303352140699,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 6,
        "GEN" : "Germersheim",
        "cases7_per_100k" : 26.353933324548699,
        "RS" : "07334",
        "EWZ" : 129013,
        "BEZ" : "Landkreis",
        "OBJECTID" : 172,
        "county" : "LK Germersheim",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 412,
        "cases_per_100k" : 319.34766263864901,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 1,
        "GEN" : "Kaiserslautern",
        "cases7_per_100k" : 34.9125770199757,
        "RS" : "07335",
        "EWZ" : 105979,
        "BEZ" : "Landkreis",
        "OBJECTID" : 173,
        "county" : "LK Kaiserslautern",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 258,
        "cases_per_100k" : 243.444455977128,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 1,
        "GEN" : "Kusel",
        "cases7_per_100k" : 7.1205799000270602,
        "RS" : "07336",
        "EWZ" : 70219,
        "BEZ" : "Landkreis",
        "OBJECTID" : 174,
        "county" : "LK Kusel",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 141,
        "cases_per_100k" : 200.80035318076301,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 4,
        "GEN" : "Südliche Weinstraße",
        "cases7_per_100k" : 7.2384433727526902,
        "RS" : "07337",
        "EWZ" : 110521,
        "BEZ" : "Landkreis",
        "OBJECTID" : 175,
        "county" : "LK Südliche Weinstraße",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 197,
        "cases_per_100k" : 178.24666805403501,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 5,
        "GEN" : "Rhein-Pfalz-Kreis",
        "cases7_per_100k" : 11.642271795302999,
        "RS" : "07338",
        "EWZ" : 154609,
        "BEZ" : "Landkreis",
        "OBJECTID" : 176,
        "county" : "LK Rhein-Pfalz-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 437,
        "cases_per_100k" : 282.64848747485598,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 25,
        "GEN" : "Mainz-Bingen",
        "cases7_per_100k" : 24.1229418637101,
        "RS" : "07339",
        "EWZ" : 211417,
        "BEZ" : "Landkreis",
        "OBJECTID" : 177,
        "county" : "LK Mainz-Bingen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 687,
        "cases_per_100k" : 324.950216869977,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 3,
        "GEN" : "Südwestpfalz",
        "cases7_per_100k" : 1.05450749227573,
        "RS" : "07340",
        "EWZ" : 94831,
        "BEZ" : "Landkreis",
        "OBJECTID" : 178,
        "county" : "LK Südwestpfalz",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 149,
        "cases_per_100k" : 157.12161634908401,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 65,
        "GEN" : "Stuttgart",
        "cases7_per_100k" : 41.200734064987103,
        "RS" : "08111",
        "EWZ" : 635911,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 179,
        "county" : "SK Stuttgart",
        "IBZ" : 41,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 3195,
        "cases_per_100k" : 502.42879899860202,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 49,
        "GEN" : "Böblingen",
        "cases7_per_100k" : 29.785619910032199,
        "RS" : "08115",
        "EWZ" : 392807,
        "BEZ" : "Landkreis",
        "OBJECTID" : 180,
        "county" : "LK Böblingen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2298,
        "cases_per_100k" : 585.02012438678503,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 121,
        "GEN" : "Esslingen",
        "cases7_per_100k" : 56.2591584676575,
        "RS" : "08116",
        "EWZ" : 535024,
        "BEZ" : "Landkreis",
        "OBJECTID" : 181,
        "county" : "LK Esslingen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 3122,
        "cases_per_100k" : 583.52522503663397,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 40,
        "GEN" : "Göppingen",
        "cases7_per_100k" : 31.7650932615391,
        "RS" : "08117",
        "EWZ" : 258145,
        "BEZ" : "Landkreis",
        "OBJECTID" : 182,
        "county" : "LK Göppingen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1272,
        "cases_per_100k" : 492.74632473997201,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 74,
        "GEN" : "Ludwigsburg",
        "cases7_per_100k" : 34.285316167451697,
        "RS" : "08118",
        "EWZ" : 545423,
        "BEZ" : "Landkreis",
        "OBJECTID" : 183,
        "county" : "LK Ludwigsburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2945,
        "cases_per_100k" : 539.94789365318297,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 99,
        "GEN" : "Rems-Murr-Kreis",
        "cases7_per_100k" : 17.554207392427799,
        "RS" : "08119",
        "EWZ" : 427248,
        "BEZ" : "Landkreis",
        "OBJECTID" : 184,
        "county" : "LK Rems-Murr-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2447,
        "cases_per_100k" : 572.73527319027801,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 17,
        "GEN" : "Heilbronn",
        "cases7_per_100k" : 33.9673913043478,
        "RS" : "08121",
        "EWZ" : 126592,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 185,
        "county" : "SK Heilbronn",
        "IBZ" : 41,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 789,
        "cases_per_100k" : 623.26213346814995,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 44,
        "GEN" : "Heilbronn",
        "cases7_per_100k" : 21.192837401583901,
        "RS" : "08125",
        "EWZ" : 344456,
        "BEZ" : "Landkreis",
        "OBJECTID" : 186,
        "county" : "LK Heilbronn",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1452,
        "cases_per_100k" : 421.53424530273799,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 47,
        "GEN" : "Hohenlohekreis",
        "cases7_per_100k" : 12.4273223558653,
        "RS" : "08126",
        "EWZ" : 112655,
        "BEZ" : "Landkreis",
        "OBJECTID" : 187,
        "county" : "LK Hohenlohekreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 883,
        "cases_per_100k" : 783.80897430207301,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 60,
        "GEN" : "Schwäbisch Hall",
        "cases7_per_100k" : 37.609079034971401,
        "RS" : "08127",
        "EWZ" : 196761,
        "BEZ" : "Landkreis",
        "OBJECTID" : 188,
        "county" : "LK Schwäbisch Hall",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1210,
        "cases_per_100k" : 614.95926530155896,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 11,
        "GEN" : "Main-Tauber-Kreis",
        "cases7_per_100k" : 23.4140741244269,
        "RS" : "08128",
        "EWZ" : 132399,
        "BEZ" : "Landkreis",
        "OBJECTID" : 189,
        "county" : "LK Main-Tauber-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 595,
        "cases_per_100k" : 449.39916464625901,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 41,
        "GEN" : "Heidenheim",
        "cases7_per_100k" : 8.2845673572983305,
        "RS" : "08135",
        "EWZ" : 132777,
        "BEZ" : "Landkreis",
        "OBJECTID" : 190,
        "county" : "LK Heidenheim",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 638,
        "cases_per_100k" : 480.50490672330301,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 44,
        "GEN" : "Ostalbkreis",
        "cases7_per_100k" : 14.0116232784014,
        "RS" : "08136",
        "EWZ" : 314025,
        "BEZ" : "Landkreis",
        "OBJECTID" : 191,
        "county" : "LK Ostalbkreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1947,
        "cases_per_100k" : 620.01433006926197,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 19,
        "GEN" : "Baden-Baden",
        "cases7_per_100k" : 16.308779559663002,
        "RS" : "08211",
        "EWZ" : 55185,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 192,
        "county" : "SK Baden-Baden",
        "IBZ" : 41,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 240,
        "cases_per_100k" : 434.90078825767898,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 14,
        "GEN" : "Karlsruhe",
        "cases7_per_100k" : 15.381657373582,
        "RS" : "08212",
        "EWZ" : 312060,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 193,
        "county" : "SK Karlsruhe",
        "IBZ" : 41,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 760,
        "cases_per_100k" : 243.542908415048,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 82,
        "GEN" : "Karlsruhe",
        "cases7_per_100k" : 19.7707935951615,
        "RS" : "08215",
        "EWZ" : 445101,
        "BEZ" : "Landkreis",
        "OBJECTID" : 194,
        "county" : "LK Karlsruhe",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1552,
        "cases_per_100k" : 348.68490522375799,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 19,
        "GEN" : "Rastatt",
        "cases7_per_100k" : 17.2845907873131,
        "RS" : "08216",
        "EWZ" : 231420,
        "BEZ" : "Landkreis",
        "OBJECTID" : 195,
        "county" : "LK Rastatt",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 784,
        "cases_per_100k" : 338.77797943133697,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 7,
        "GEN" : "Heidelberg",
        "cases7_per_100k" : 21.673839675511701,
        "RS" : "08221",
        "EWZ" : 161485,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 196,
        "county" : "SK Heidelberg",
        "IBZ" : 41,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 573,
        "cases_per_100k" : 354.83171811623401,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 13,
        "GEN" : "Mannheim",
        "cases7_per_100k" : 31.867841806745702,
        "RS" : "08222",
        "EWZ" : 310658,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 197,
        "county" : "SK Mannheim",
        "IBZ" : 41,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1249,
        "cases_per_100k" : 402.04984259217503,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 23,
        "GEN" : "Neckar-Odenwald-Kreis",
        "cases7_per_100k" : 22.975221571644401,
        "RS" : "08225",
        "EWZ" : 143633,
        "BEZ" : "Landkreis",
        "OBJECTID" : 198,
        "county" : "LK Neckar-Odenwald-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 575,
        "cases_per_100k" : 400.32583041501601,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 40,
        "GEN" : "Rhein-Neckar-Kreis",
        "cases7_per_100k" : 17.324543407099402,
        "RS" : "08226",
        "EWZ" : 548355,
        "BEZ" : "Landkreis",
        "OBJECTID" : 199,
        "county" : "LK Rhein-Neckar-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1760,
        "cases_per_100k" : 320.95996206836799,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 9,
        "GEN" : "Pforzheim",
        "cases7_per_100k" : 27.787260731837101,
        "RS" : "08231",
        "EWZ" : 125957,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 200,
        "county" : "SK Pforzheim",
        "IBZ" : 41,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 665,
        "cases_per_100k" : 527.957953904904,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 27,
        "GEN" : "Calw",
        "cases7_per_100k" : 19.4722394959831,
        "RS" : "08235",
        "EWZ" : 159201,
        "BEZ" : "Landkreis",
        "OBJECTID" : 201,
        "county" : "LK Calw",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 968,
        "cases_per_100k" : 608.03638168101998,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 28,
        "GEN" : "Enzkreis",
        "cases7_per_100k" : 26.0578484235002,
        "RS" : "08236",
        "EWZ" : 199556,
        "BEZ" : "Landkreis",
        "OBJECTID" : 202,
        "county" : "LK Enzkreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 955,
        "cases_per_100k" : 478.56240854697398,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 39,
        "GEN" : "Freudenstadt",
        "cases7_per_100k" : 8.4571602547296703,
        "RS" : "08237",
        "EWZ" : 118243,
        "BEZ" : "Landkreis",
        "OBJECTID" : 203,
        "county" : "LK Freudenstadt",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 675,
        "cases_per_100k" : 570.858317194253,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 80,
        "GEN" : "Freiburg im Breisgau",
        "cases7_per_100k" : 20.329159367633402,
        "RS" : "08311",
        "EWZ" : 231195,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 204,
        "county" : "SK Freiburg i.Breisgau",
        "IBZ" : 41,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1339,
        "cases_per_100k" : 579.16477432470401,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 72,
        "GEN" : "Breisgau-Hochschwarzwald",
        "cases7_per_100k" : 16.6918941885653,
        "RS" : "08315",
        "EWZ" : 263601,
        "BEZ" : "Landkreis",
        "OBJECTID" : 205,
        "county" : "LK Breisgau-Hochschwarzwald",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1569,
        "cases_per_100k" : 595.21777231497595,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 44,
        "GEN" : "Emmendingen",
        "cases7_per_100k" : 22.835440603817101,
        "RS" : "08316",
        "EWZ" : 166408,
        "BEZ" : "Landkreis",
        "OBJECTID" : 206,
        "county" : "LK Emmendingen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 739,
        "cases_per_100k" : 444.08922647949601,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 125,
        "GEN" : "Ortenaukreis",
        "cases7_per_100k" : 30.629790255549899,
        "RS" : "08317",
        "EWZ" : 430953,
        "BEZ" : "Landkreis",
        "OBJECTID" : 207,
        "county" : "LK Ortenaukreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1747,
        "cases_per_100k" : 405.380633154892,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 26,
        "GEN" : "Rottweil",
        "cases7_per_100k" : 7.1490870615822404,
        "RS" : "08325",
        "EWZ" : 139878,
        "BEZ" : "Landkreis",
        "OBJECTID" : 208,
        "county" : "LK Rottweil",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 791,
        "cases_per_100k" : 565.49278657115497,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 35,
        "GEN" : "Schwarzwald-Baar-Kreis",
        "cases7_per_100k" : 15.5289732995774,
        "RS" : "08326",
        "EWZ" : 212506,
        "BEZ" : "Landkreis",
        "OBJECTID" : 209,
        "county" : "LK Schwarzwald-Baar-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 732,
        "cases_per_100k" : 344.46086228153598,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 25,
        "GEN" : "Tuttlingen",
        "cases7_per_100k" : 34.099143259025603,
        "RS" : "08327",
        "EWZ" : 140766,
        "BEZ" : "Landkreis",
        "OBJECTID" : 210,
        "county" : "LK Tuttlingen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 668,
        "cases_per_100k" : 474.546410354773,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 17,
        "GEN" : "Konstanz",
        "cases7_per_100k" : 18.8610048724263,
        "RS" : "08335",
        "EWZ" : 286305,
        "BEZ" : "Landkreis",
        "OBJECTID" : 211,
        "county" : "LK Konstanz",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 818,
        "cases_per_100k" : 285.70929603045698,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 65,
        "GEN" : "Lörrach",
        "cases7_per_100k" : 7.4321488528259696,
        "RS" : "08336",
        "EWZ" : 228736,
        "BEZ" : "Landkreis",
        "OBJECTID" : 212,
        "county" : "LK Lörrach",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 925,
        "cases_per_100k" : 404.39633463906,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 35,
        "GEN" : "Waldshut",
        "cases7_per_100k" : 5.8478506225037004,
        "RS" : "08337",
        "EWZ" : 171003,
        "BEZ" : "Landkreis",
        "OBJECTID" : 213,
        "county" : "LK Waldshut",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 459,
        "cases_per_100k" : 268.41634357292003,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 82,
        "GEN" : "Reutlingen",
        "cases7_per_100k" : 23.342182459220901,
        "RS" : "08415",
        "EWZ" : 287034,
        "BEZ" : "Landkreis",
        "OBJECTID" : 214,
        "county" : "LK Reutlingen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2040,
        "cases_per_100k" : 710.71719726582899,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 60,
        "GEN" : "Tübingen",
        "cases7_per_100k" : 17.054548316847299,
        "RS" : "08416",
        "EWZ" : 228678,
        "BEZ" : "Landkreis",
        "OBJECTID" : 215,
        "county" : "LK Tübingen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1601,
        "cases_per_100k" : 700.111073212115,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 78,
        "GEN" : "Zollernalbkreis",
        "cases7_per_100k" : 10.0336390952826,
        "RS" : "08417",
        "EWZ" : 189363,
        "BEZ" : "Landkreis",
        "OBJECTID" : 216,
        "county" : "LK Zollernalbkreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1439,
        "cases_per_100k" : 759.91613990061398,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 10,
        "GEN" : "Ulm",
        "cases7_per_100k" : 18.928937613376402,
        "RS" : "08421",
        "EWZ" : 126790,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 217,
        "county" : "SK Ulm",
        "IBZ" : 41,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 631,
        "cases_per_100k" : 497.673318085022,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 26,
        "GEN" : "Alb-Donau-Kreis",
        "cases7_per_100k" : 14.207716819907001,
        "RS" : "08425",
        "EWZ" : 197076,
        "BEZ" : "Landkreis",
        "OBJECTID" : 218,
        "county" : "LK Alb-Donau-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 957,
        "cases_per_100k" : 485.59946416610899,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 36,
        "GEN" : "Biberach",
        "cases7_per_100k" : 19.8726165280552,
        "RS" : "08426",
        "EWZ" : 201282,
        "BEZ" : "Landkreis",
        "OBJECTID" : 219,
        "county" : "LK Biberach",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 905,
        "cases_per_100k" : 449.61794894724801,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 8,
        "GEN" : "Bodenseekreis",
        "cases7_per_100k" : 7.81717018439325,
        "RS" : "08435",
        "EWZ" : 217470,
        "BEZ" : "Landkreis",
        "OBJECTID" : 220,
        "county" : "LK Bodenseekreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 574,
        "cases_per_100k" : 263.94445210833698,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 7,
        "GEN" : "Ravensburg",
        "cases7_per_100k" : 15.0653063512529,
        "RS" : "08436",
        "EWZ" : 285424,
        "BEZ" : "Landkreis",
        "OBJECTID" : 221,
        "county" : "LK Ravensburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 944,
        "cases_per_100k" : 330.73602780424898,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 36,
        "GEN" : "Sigmaringen",
        "cases7_per_100k" : 16.813273315042501,
        "RS" : "08437",
        "EWZ" : 130849,
        "BEZ" : "Landkreis",
        "OBJECTID" : 222,
        "county" : "LK Sigmaringen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 917,
        "cases_per_100k" : 700.80780135881798,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 39,
        "GEN" : "Ingolstadt",
        "cases7_per_100k" : 39.3035984627926,
        "RS" : "09161",
        "EWZ" : 137392,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 223,
        "county" : "SK Ingolstadt",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 853,
        "cases_per_100k" : 620.85128682892696,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 229,
        "GEN" : "München",
        "cases7_per_100k" : 47.701630344704903,
        "RS" : "09162",
        "EWZ" : 1484226,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 224,
        "county" : "SK München",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 12426,
        "cases_per_100k" : 837.20403766003301,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 23,
        "GEN" : "Rosenheim",
        "cases7_per_100k" : 67.662192569747106,
        "RS" : "09163",
        "EWZ" : 63551,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 225,
        "county" : "SK Rosenheim",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 771,
        "cases_per_100k" : 1213.1988481691899,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 57,
        "GEN" : "Altötting",
        "cases7_per_100k" : 2.69019692241472,
        "RS" : "09171",
        "EWZ" : 111516,
        "BEZ" : "Landkreis",
        "OBJECTID" : 226,
        "county" : "LK Altötting",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 758,
        "cases_per_100k" : 679.72308906345302,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 25,
        "GEN" : "Berchtesgadener Land",
        "cases7_per_100k" : 18.8805709484655,
        "RS" : "09172",
        "EWZ" : 105929,
        "BEZ" : "Landkreis",
        "OBJECTID" : 227,
        "county" : "LK Berchtesgadener Land",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 469,
        "cases_per_100k" : 442.74938874151599,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 10,
        "GEN" : "Bad Tölz-Wolfratshausen",
        "cases7_per_100k" : 12.5081107280502,
        "RS" : "09173",
        "EWZ" : 127917,
        "BEZ" : "Landkreis",
        "OBJECTID" : 228,
        "county" : "LK Bad Tölz-Wolfratshausen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 662,
        "cases_per_100k" : 517.52308137307796,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 35,
        "GEN" : "Dachau",
        "cases7_per_100k" : 27.760024273881701,
        "RS" : "09174",
        "EWZ" : 154899,
        "BEZ" : "Landkreis",
        "OBJECTID" : 229,
        "county" : "LK Dachau",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1300,
        "cases_per_100k" : 839.25654781502794,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 6,
        "GEN" : "Ebersberg",
        "cases7_per_100k" : 41.072336041322899,
        "RS" : "09175",
        "EWZ" : 143649,
        "BEZ" : "Landkreis",
        "OBJECTID" : 230,
        "county" : "LK Ebersberg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 837,
        "cases_per_100k" : 582.67025875571699,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 20,
        "GEN" : "Eichstätt",
        "cases7_per_100k" : 3.7627651808761202,
        "RS" : "09176",
        "EWZ" : 132881,
        "BEZ" : "Landkreis",
        "OBJECTID" : 231,
        "county" : "LK Eichstätt",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 437,
        "cases_per_100k" : 328.86567680857303,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 11,
        "GEN" : "Erding",
        "cases7_per_100k" : 8.6841990997380307,
        "RS" : "09177",
        "EWZ" : 138182,
        "BEZ" : "Landkreis",
        "OBJECTID" : 232,
        "county" : "LK Erding",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 883,
        "cases_per_100k" : 639.01231708905595,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 47,
        "GEN" : "Freising",
        "cases7_per_100k" : 13.888348786436101,
        "RS" : "09178",
        "EWZ" : 180007,
        "BEZ" : "Landkreis",
        "OBJECTID" : 233,
        "county" : "LK Freising",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1370,
        "cases_per_100k" : 761.08151349669697,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 36,
        "GEN" : "Fürstenfeldbruck",
        "cases7_per_100k" : 51.0690298252254,
        "RS" : "09179",
        "EWZ" : 219311,
        "BEZ" : "Landkreis",
        "OBJECTID" : 234,
        "county" : "LK Fürstenfeldbruck",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1464,
        "cases_per_100k" : 667.54517557258896,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 20,
        "GEN" : "Garmisch-Partenkirchen",
        "cases7_per_100k" : 4.5236587351850197,
        "RS" : "09180",
        "EWZ" : 88424,
        "BEZ" : "Landkreis",
        "OBJECTID" : 235,
        "county" : "LK Garmisch-Partenkirchen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 439,
        "cases_per_100k" : 496.471546186556,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 10,
        "GEN" : "Landsberg am Lech",
        "cases7_per_100k" : 16.624827517414499,
        "RS" : "09181",
        "EWZ" : 120302,
        "BEZ" : "Landkreis",
        "OBJECTID" : 236,
        "county" : "LK Landsberg a.Lech",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 504,
        "cases_per_100k" : 418.94565343884602,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 11,
        "GEN" : "Miesbach",
        "cases7_per_100k" : 31.996800319967999,
        "RS" : "09182",
        "EWZ" : 100010,
        "BEZ" : "Landkreis",
        "OBJECTID" : 237,
        "county" : "LK Miesbach",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 792,
        "cases_per_100k" : 791.92080791920796,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 27,
        "GEN" : "Mühldorf a. Inn",
        "cases7_per_100k" : 12.9453189726595,
        "RS" : "09183",
        "EWZ" : 115872,
        "BEZ" : "Landkreis",
        "OBJECTID" : 238,
        "county" : "LK Mühldorf a.Inn",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 677,
        "cases_per_100k" : 584.26539629936497,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 96,
        "GEN" : "München",
        "cases7_per_100k" : 27.1062250159071,
        "RS" : "09184",
        "EWZ" : 350473,
        "BEZ" : "Landkreis",
        "OBJECTID" : 239,
        "county" : "LK München",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2221,
        "cases_per_100k" : 633.71500800346996,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 18,
        "GEN" : "Neuburg-Schrobenhausen",
        "cases7_per_100k" : 18.4989157579931,
        "RS" : "09185",
        "EWZ" : 97303,
        "BEZ" : "Landkreis",
        "OBJECTID" : 240,
        "county" : "LK Neuburg-Schrobenhausen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 459,
        "cases_per_100k" : 471.72235182882298,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 21,
        "GEN" : "Pfaffenhofen a.d. Ilm",
        "cases7_per_100k" : 16.377206048648102,
        "RS" : "09186",
        "EWZ" : 128227,
        "BEZ" : "Landkreis",
        "OBJECTID" : 241,
        "county" : "LK Pfaffenhofen a.d.Ilm",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 536,
        "cases_per_100k" : 418.00868771787498,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 199,
        "GEN" : "Rosenheim",
        "cases7_per_100k" : 31.377951249378199,
        "RS" : "09187",
        "EWZ" : 261330,
        "BEZ" : "Landkreis",
        "OBJECTID" : 242,
        "county" : "LK Rosenheim",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2716,
        "cases_per_100k" : 1039.2989706501401,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 13,
        "GEN" : "Starnberg",
        "cases7_per_100k" : 5.8536442594042501,
        "RS" : "09188",
        "EWZ" : 136667,
        "BEZ" : "Landkreis",
        "OBJECTID" : 243,
        "county" : "LK Starnberg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 805,
        "cases_per_100k" : 589.02295360255198,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 88,
        "GEN" : "Traunstein",
        "cases7_per_100k" : 26.5059017928141,
        "RS" : "09189",
        "EWZ" : 177319,
        "BEZ" : "Landkreis",
        "OBJECTID" : 244,
        "county" : "LK Traunstein",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1499,
        "cases_per_100k" : 845.36908058358097,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 3,
        "GEN" : "Weilheim-Schongau",
        "cases7_per_100k" : 10.3337811305157,
        "RS" : "09190",
        "EWZ" : 135478,
        "BEZ" : "Landkreis",
        "OBJECTID" : 245,
        "county" : "LK Weilheim-Schongau",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 492,
        "cases_per_100k" : 363.15859401526501,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 9,
        "GEN" : "Landshut",
        "cases7_per_100k" : 8.1731620601817205,
        "RS" : "09261",
        "EWZ" : 73411,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 246,
        "county" : "SK Landshut",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 471,
        "cases_per_100k" : 641.59322172426505,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 18,
        "GEN" : "Passau",
        "cases7_per_100k" : 11.3629907391625,
        "RS" : "09262",
        "EWZ" : 52803,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 247,
        "county" : "SK Passau",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 233,
        "cases_per_100k" : 441.26280703747898,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 48,
        "GEN" : "Straubing",
        "cases7_per_100k" : 4.1848883681027802,
        "RS" : "09263",
        "EWZ" : 47791,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 248,
        "county" : "SK Straubing",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 505,
        "cases_per_100k" : 1056.6843129459501,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 19,
        "GEN" : "Deggendorf",
        "cases7_per_100k" : 30.131070155174999,
        "RS" : "09271",
        "EWZ" : 119478,
        "BEZ" : "Landkreis",
        "OBJECTID" : 249,
        "county" : "LK Deggendorf",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 501,
        "cases_per_100k" : 419.32405965951898,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 12,
        "GEN" : "Freyung-Grafenau",
        "cases7_per_100k" : 15.313544830402501,
        "RS" : "09272",
        "EWZ" : 78362,
        "BEZ" : "Landkreis",
        "OBJECTID" : 250,
        "county" : "LK Freyung-Grafenau",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 261,
        "cases_per_100k" : 333.06960006125399,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 35,
        "GEN" : "Kelheim",
        "cases7_per_100k" : 12.1893741162704,
        "RS" : "09273",
        "EWZ" : 123058,
        "BEZ" : "Landkreis",
        "OBJECTID" : 251,
        "county" : "LK Kelheim",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 687,
        "cases_per_100k" : 558.27333452518303,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 34,
        "GEN" : "Landshut",
        "cases7_per_100k" : 8.7557459582851305,
        "RS" : "09274",
        "EWZ" : 159895,
        "BEZ" : "Landkreis",
        "OBJECTID" : 252,
        "county" : "LK Landshut",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 877,
        "cases_per_100k" : 548.48494324400394,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 31,
        "GEN" : "Passau",
        "cases7_per_100k" : 15.571796362428399,
        "RS" : "09275",
        "EWZ" : 192656,
        "BEZ" : "Landkreis",
        "OBJECTID" : 253,
        "county" : "LK Passau",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 857,
        "cases_per_100k" : 444.83431608670401,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 12,
        "GEN" : "Regen",
        "cases7_per_100k" : 31.003746286009601,
        "RS" : "09276",
        "EWZ" : 77410,
        "BEZ" : "Landkreis",
        "OBJECTID" : 254,
        "county" : "LK Regen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 269,
        "cases_per_100k" : 347.50032295569002,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 51,
        "GEN" : "Rottal-Inn",
        "cases7_per_100k" : 35.390363944626401,
        "RS" : "09277",
        "EWZ" : 121502,
        "BEZ" : "Landkreis",
        "OBJECTID" : 255,
        "county" : "LK Rottal-Inn",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 930,
        "cases_per_100k" : 765.41949926750203,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 29,
        "GEN" : "Straubing-Bogen",
        "cases7_per_100k" : 6.9224683544303804,
        "RS" : "09278",
        "EWZ" : 101120,
        "BEZ" : "Landkreis",
        "OBJECTID" : 256,
        "county" : "LK Straubing-Bogen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 640,
        "cases_per_100k" : 632.911392405063,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 10,
        "GEN" : "Dingolfing-Landau",
        "cases7_per_100k" : 27.9263158983482,
        "RS" : "09279",
        "EWZ" : 96683,
        "BEZ" : "Landkreis",
        "OBJECTID" : 257,
        "county" : "LK Dingolfing-Landau",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1012,
        "cases_per_100k" : 1046.7196921899399,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 4,
        "GEN" : "Amberg",
        "cases7_per_100k" : 40.277679057976201,
        "RS" : "09361",
        "EWZ" : 42207,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 258,
        "county" : "SK Amberg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 148,
        "cases_per_100k" : 350.65273532826302,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 10,
        "GEN" : "Regensburg",
        "cases7_per_100k" : 24.821351587913298,
        "RS" : "09362",
        "EWZ" : 153094,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 259,
        "county" : "SK Regensburg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 973,
        "cases_per_100k" : 635.55723934314904,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 20,
        "GEN" : "Weiden i.d. OPf.",
        "cases7_per_100k" : 23.395643731137302,
        "RS" : "09363",
        "EWZ" : 42743,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 260,
        "county" : "SK Weiden i.d.OPf.",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 409,
        "cases_per_100k" : 956.88182860351401,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 54,
        "GEN" : "Amberg-Sulzbach",
        "cases7_per_100k" : 7.7632970722665897,
        "RS" : "09371",
        "EWZ" : 103049,
        "BEZ" : "Landkreis",
        "OBJECTID" : 261,
        "county" : "LK Amberg-Sulzbach",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 559,
        "cases_per_100k" : 542.46038292462799,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 21,
        "GEN" : "Cham",
        "cases7_per_100k" : 23.4378662166596,
        "RS" : "09372",
        "EWZ" : 127998,
        "BEZ" : "Landkreis",
        "OBJECTID" : 262,
        "county" : "LK Cham",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 548,
        "cases_per_100k" : 428.131689557649,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 17,
        "GEN" : "Neumarkt i.d. OPf.",
        "cases7_per_100k" : 13.375639987218801,
        "RS" : "09373",
        "EWZ" : 134573,
        "BEZ" : "Landkreis",
        "OBJECTID" : 263,
        "county" : "LK Neumarkt i.d.OPf.",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 592,
        "cases_per_100k" : 439.90993735741898,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 73,
        "GEN" : "Neustadt a.d. Waldnaab",
        "cases7_per_100k" : 30.704076230809999,
        "RS" : "09374",
        "EWZ" : 94450,
        "BEZ" : "Landkreis",
        "OBJECTID" : 264,
        "county" : "LK Neustadt a.d.Waldnaab",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 946,
        "cases_per_100k" : 1001.58814187401,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 16,
        "GEN" : "Regensburg",
        "cases7_per_100k" : 16.4888957592621,
        "RS" : "09375",
        "EWZ" : 194070,
        "BEZ" : "Landkreis",
        "OBJECTID" : 265,
        "county" : "LK Regensburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 786,
        "cases_per_100k" : 405.00850208687598,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 20,
        "GEN" : "Schwandorf",
        "cases7_per_100k" : 13.5252109932915,
        "RS" : "09376",
        "EWZ" : 147872,
        "BEZ" : "Landkreis",
        "OBJECTID" : 266,
        "county" : "LK Schwandorf",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 619,
        "cases_per_100k" : 418.60528024237198,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 140,
        "GEN" : "Tirschenreuth",
        "cases7_per_100k" : 30.536046414790601,
        "RS" : "09377",
        "EWZ" : 72046,
        "BEZ" : "Landkreis",
        "OBJECTID" : 267,
        "county" : "LK Tirschenreuth",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1246,
        "cases_per_100k" : 1729.4506287649599,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 22,
        "GEN" : "Bamberg",
        "cases7_per_100k" : 27.1412508239308,
        "RS" : "09461",
        "EWZ" : 77373,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 268,
        "county" : "SK Bamberg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 280,
        "cases_per_100k" : 361.88334431907799,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 11,
        "GEN" : "Bayreuth",
        "cases7_per_100k" : 14.709225358704501,
        "RS" : "09462",
        "EWZ" : 74783,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 269,
        "county" : "SK Bayreuth",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 291,
        "cases_per_100k" : 389.125870853001,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 4,
        "GEN" : "Coburg",
        "cases7_per_100k" : 4.8694974678613203,
        "RS" : "09463",
        "EWZ" : 41072,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 270,
        "county" : "SK Coburg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 150,
        "cases_per_100k" : 365.21231008959899,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 5,
        "GEN" : "Hof",
        "cases7_per_100k" : 6.5466448445171803,
        "RS" : "09464",
        "EWZ" : 45825,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 271,
        "county" : "SK Hof",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 192,
        "cases_per_100k" : 418.9852700491,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 38,
        "GEN" : "Bamberg",
        "cases7_per_100k" : 23.103633386109301,
        "RS" : "09471",
        "EWZ" : 147163,
        "BEZ" : "Landkreis",
        "OBJECTID" : 272,
        "county" : "LK Bamberg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 548,
        "cases_per_100k" : 372.37620869376099,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 28,
        "GEN" : "Bayreuth",
        "cases7_per_100k" : 5.7879302361475498,
        "RS" : "09472",
        "EWZ" : 103664,
        "BEZ" : "Landkreis",
        "OBJECTID" : 273,
        "county" : "LK Bayreuth",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 462,
        "cases_per_100k" : 445.670628183362,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 30,
        "GEN" : "Coburg",
        "cases7_per_100k" : 9.2222209413582004,
        "RS" : "09473",
        "EWZ" : 86747,
        "BEZ" : "Landkreis",
        "OBJECTID" : 274,
        "county" : "LK Coburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 453,
        "cases_per_100k" : 522.20826080440804,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 4,
        "GEN" : "Forchheim",
        "cases7_per_100k" : 12.047881724224,
        "RS" : "09474",
        "EWZ" : 116203,
        "BEZ" : "Landkreis",
        "OBJECTID" : 275,
        "county" : "LK Forchheim",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 316,
        "cases_per_100k" : 271.937901775341,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 32,
        "GEN" : "Hof",
        "cases7_per_100k" : 4.2193647746331804,
        "RS" : "09475",
        "EWZ" : 94801,
        "BEZ" : "Landkreis",
        "OBJECTID" : 276,
        "county" : "LK Hof",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 555,
        "cases_per_100k" : 585.43686248035397,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 3,
        "GEN" : "Kronach",
        "cases7_per_100k" : 16.481129107172301,
        "RS" : "09476",
        "EWZ" : 66743,
        "BEZ" : "Landkreis",
        "OBJECTID" : 277,
        "county" : "LK Kronach",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 197,
        "cases_per_100k" : 295.16203946481301,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 11,
        "GEN" : "Kulmbach",
        "cases7_per_100k" : 8.3838694352066607,
        "RS" : "09477",
        "EWZ" : 71566,
        "BEZ" : "Landkreis",
        "OBJECTID" : 278,
        "county" : "LK Kulmbach",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 324,
        "cases_per_100k" : 452.72894950116,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 17,
        "GEN" : "Lichtenfels",
        "cases7_per_100k" : 23.9607044447107,
        "RS" : "09478",
        "EWZ" : 66776,
        "BEZ" : "Landkreis",
        "OBJECTID" : 279,
        "county" : "LK Lichtenfels",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 394,
        "cases_per_100k" : 590.03234695100002,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 43,
        "GEN" : "Wunsiedel i. Fichtelgebirge",
        "cases7_per_100k" : 23.398252012937899,
        "RS" : "09479",
        "EWZ" : 72655,
        "BEZ" : "Landkreis",
        "OBJECTID" : 280,
        "county" : "LK Wunsiedel i.Fichtelgebirge",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 792,
        "cases_per_100k" : 1090.0832702498101,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 8,
        "GEN" : "Ansbach",
        "cases7_per_100k" : 7.1773769079860301,
        "RS" : "09561",
        "EWZ" : 41798,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 281,
        "county" : "SK Ansbach",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 200,
        "cases_per_100k" : 478.49179386573502,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 12,
        "GEN" : "Erlangen",
        "cases7_per_100k" : 11.552680221811499,
        "RS" : "09562",
        "EWZ" : 112528,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 282,
        "county" : "SK Erlangen",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 415,
        "cases_per_100k" : 368.79709938859702,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 38,
        "GEN" : "Fürth",
        "cases7_per_100k" : 14.786337424219999,
        "RS" : "09563",
        "EWZ" : 128497,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 283,
        "county" : "SK Fürth",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 637,
        "cases_per_100k" : 495.73141785411298,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 53,
        "GEN" : "Nürnberg",
        "cases7_per_100k" : 36.267530914211903,
        "RS" : "09564",
        "EWZ" : 518370,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 284,
        "county" : "SK Nürnberg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2305,
        "cases_per_100k" : 444.66307849605499,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 2,
        "GEN" : "Schwabach",
        "cases7_per_100k" : 14.640931163222,
        "RS" : "09565",
        "EWZ" : 40981,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 285,
        "county" : "SK Schwabach",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 131,
        "cases_per_100k" : 319.66033039701301,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 28,
        "GEN" : "Ansbach",
        "cases7_per_100k" : 11.3765026463912,
        "RS" : "09571",
        "EWZ" : 184591,
        "BEZ" : "Landkreis",
        "OBJECTID" : 286,
        "county" : "LK Ansbach",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 732,
        "cases_per_100k" : 396.55237795992201,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 11,
        "GEN" : "Erlangen-Höchstadt",
        "cases7_per_100k" : 18.2133438242194,
        "RS" : "09572",
        "EWZ" : 137262,
        "BEZ" : "Landkreis",
        "OBJECTID" : 287,
        "county" : "LK Erlangen-Höchstadt",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 414,
        "cases_per_100k" : 301.61297372907302,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 58,
        "GEN" : "Fürth",
        "cases7_per_100k" : 14.4247494760422,
        "RS" : "09573",
        "EWZ" : 117853,
        "BEZ" : "Landkreis",
        "OBJECTID" : 288,
        "county" : "LK Fürth",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 623,
        "cases_per_100k" : 528.62464256319299,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 44,
        "GEN" : "Nürnberger Land",
        "cases7_per_100k" : 8.7826127687479492,
        "RS" : "09574",
        "EWZ" : 170792,
        "BEZ" : "Landkreis",
        "OBJECTID" : 289,
        "county" : "LK Nürnberger Land",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 806,
        "cases_per_100k" : 471.919059440723,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 6,
        "GEN" : "Neustadt a.d. Aisch-Bad Windsheim",
        "cases7_per_100k" : 2.9698853624250101,
        "RS" : "09575",
        "EWZ" : 101014,
        "BEZ" : "Landkreis",
        "OBJECTID" : 290,
        "county" : "LK Neustadt a.d.Aisch-Bad Windsheim",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 305,
        "cases_per_100k" : 301.93834517987602,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 7,
        "GEN" : "Roth",
        "cases7_per_100k" : 11.8344128947763,
        "RS" : "09576",
        "EWZ" : 126749,
        "BEZ" : "Landkreis",
        "OBJECTID" : 291,
        "county" : "LK Roth",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 382,
        "cases_per_100k" : 301.38304838697002,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 25,
        "GEN" : "Weißenburg-Gunzenhausen",
        "cases7_per_100k" : 3.1667616695167502,
        "RS" : "09577",
        "EWZ" : 94734,
        "BEZ" : "Landkreis",
        "OBJECTID" : 292,
        "county" : "LK Weißenburg-Gunzenhausen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 460,
        "cases_per_100k" : 485.57012265923498,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 1,
        "GEN" : "Aschaffenburg",
        "cases7_per_100k" : 15.4925213374271,
        "RS" : "09661",
        "EWZ" : 71002,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 293,
        "county" : "SK Aschaffenburg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 202,
        "cases_per_100k" : 284.49902819638902,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 18,
        "GEN" : "Schweinfurt",
        "cases7_per_100k" : 41.178452438887398,
        "RS" : "09662",
        "EWZ" : 53426,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 294,
        "county" : "SK Schweinfurt",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 277,
        "cases_per_100k" : 518.47415116235504,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 52,
        "GEN" : "Würzburg",
        "cases7_per_100k" : 29.702815514249501,
        "RS" : "09663",
        "EWZ" : 127934,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 295,
        "county" : "SK Würzburg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 848,
        "cases_per_100k" : 662.84177779167396,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 42,
        "GEN" : "Aschaffenburg",
        "cases7_per_100k" : 12.6291618828932,
        "RS" : "09671",
        "EWZ" : 174200,
        "BEZ" : "Landkreis",
        "OBJECTID" : 296,
        "county" : "LK Aschaffenburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 735,
        "cases_per_100k" : 421.92881745120599,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 18,
        "GEN" : "Bad Kissingen",
        "cases7_per_100k" : 2.9059911851600702,
        "RS" : "09672",
        "EWZ" : 103235,
        "BEZ" : "Landkreis",
        "OBJECTID" : 297,
        "county" : "LK Bad Kissingen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 298,
        "cases_per_100k" : 288.66179105923402,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 8,
        "GEN" : "Rhön-Grabfeld",
        "cases7_per_100k" : 17.580209706787201,
        "RS" : "09673",
        "EWZ" : 79635,
        "BEZ" : "Landkreis",
        "OBJECTID" : 298,
        "county" : "LK Rhön-Grabfeld",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 315,
        "cases_per_100k" : 395.55471840271201,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 6,
        "GEN" : "Haßberge",
        "cases7_per_100k" : 16.5908229048161,
        "RS" : "09674",
        "EWZ" : 84384,
        "BEZ" : "Landkreis",
        "OBJECTID" : 299,
        "county" : "LK Haßberge",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 246,
        "cases_per_100k" : 291.524459613197,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 4,
        "GEN" : "Kitzingen",
        "cases7_per_100k" : 6.5821951620865597,
        "RS" : "09675",
        "EWZ" : 91155,
        "BEZ" : "Landkreis",
        "OBJECTID" : 300,
        "county" : "LK Kitzingen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 304,
        "cases_per_100k" : 333.49788821238502,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 6,
        "GEN" : "Miltenberg",
        "cases7_per_100k" : 19.418531492974399,
        "RS" : "09676",
        "EWZ" : 128743,
        "BEZ" : "Landkreis",
        "OBJECTID" : 301,
        "county" : "LK Miltenberg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 472,
        "cases_per_100k" : 366.62187458735599,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 6,
        "GEN" : "Main-Spessart",
        "cases7_per_100k" : 16.6457933702183,
        "RS" : "09677",
        "EWZ" : 126158,
        "BEZ" : "Landkreis",
        "OBJECTID" : 302,
        "county" : "LK Main-Spessart",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 264,
        "cases_per_100k" : 209.26140236845899,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 25,
        "GEN" : "Schweinfurt",
        "cases7_per_100k" : 30.317467192169399,
        "RS" : "09678",
        "EWZ" : 115445,
        "BEZ" : "Landkreis",
        "OBJECTID" : 303,
        "county" : "LK Schweinfurt",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 721,
        "cases_per_100k" : 624.53982415868995,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 7,
        "GEN" : "Würzburg",
        "cases7_per_100k" : 17.2517898731993,
        "RS" : "09679",
        "EWZ" : 162302,
        "BEZ" : "Landkreis",
        "OBJECTID" : 304,
        "county" : "LK Würzburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 685,
        "cases_per_100k" : 422.05271654077001,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 16,
        "GEN" : "Augsburg",
        "cases7_per_100k" : 20.5676676264912,
        "RS" : "09761",
        "EWZ" : 296582,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 305,
        "county" : "SK Augsburg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1151,
        "cases_per_100k" : 388.08828587034998,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 9,
        "GEN" : "Kaufbeuren",
        "cases7_per_100k" : 20.271183386638999,
        "RS" : "09762",
        "EWZ" : 44398,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 306,
        "county" : "SK Kaufbeuren",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 210,
        "cases_per_100k" : 472.994279021578,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 10,
        "GEN" : "Kempten (Allgäu)",
        "cases7_per_100k" : 14.461106853118499,
        "RS" : "09763",
        "EWZ" : 69151,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 307,
        "county" : "SK Kempten",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 198,
        "cases_per_100k" : 286.32991569174698,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 1,
        "GEN" : "Memmingen",
        "cases7_per_100k" : 54.421768707482997,
        "RS" : "09764",
        "EWZ" : 44100,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 308,
        "county" : "SK Memmingen",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 173,
        "cases_per_100k" : 392.29024943310702,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 20,
        "GEN" : "Aichach-Friedberg",
        "cases7_per_100k" : 25.249712227544499,
        "RS" : "09771",
        "EWZ" : 134655,
        "BEZ" : "Landkreis",
        "OBJECTID" : 309,
        "county" : "LK Aichach-Friedberg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 539,
        "cases_per_100k" : 400.28220266607298,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 11,
        "GEN" : "Augsburg",
        "cases7_per_100k" : 15.386557671974399,
        "RS" : "09772",
        "EWZ" : 253468,
        "BEZ" : "Landkreis",
        "OBJECTID" : 310,
        "county" : "LK Augsburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 818,
        "cases_per_100k" : 322.72318399166801,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 29,
        "GEN" : "Dillingen a.d. Donau",
        "cases7_per_100k" : 4.1424162714111104,
        "RS" : "09773",
        "EWZ" : 96562,
        "BEZ" : "Landkreis",
        "OBJECTID" : 311,
        "county" : "LK Dillingen a.d.Donau",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 390,
        "cases_per_100k" : 403.885586462584,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 4,
        "GEN" : "Günzburg",
        "cases7_per_100k" : 21.255323671345501,
        "RS" : "09774",
        "EWZ" : 127027,
        "BEZ" : "Landkreis",
        "OBJECTID" : 312,
        "county" : "LK Günzburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 453,
        "cases_per_100k" : 356.61709715257399,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 26,
        "GEN" : "Neu-Ulm",
        "cases7_per_100k" : 34.245793475034802,
        "RS" : "09775",
        "EWZ" : 175204,
        "BEZ" : "Landkreis",
        "OBJECTID" : 313,
        "county" : "LK Neu-Ulm",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 873,
        "cases_per_100k" : 498.27629506175703,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 8,
        "GEN" : "Lindau (Bodensee)",
        "cases7_per_100k" : 21.9563069491712,
        "RS" : "09776",
        "EWZ" : 81981,
        "BEZ" : "Landkreis",
        "OBJECTID" : 314,
        "county" : "LK Lindau",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 336,
        "cases_per_100k" : 409.85106305119501,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 40,
        "GEN" : "Ostallgäu",
        "cases7_per_100k" : 17.707639784108501,
        "RS" : "09777",
        "EWZ" : 141182,
        "BEZ" : "Landkreis",
        "OBJECTID" : 315,
        "county" : "LK Ostallgäu",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 731,
        "cases_per_100k" : 517.77138728733098,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 17,
        "GEN" : "Unterallgäu",
        "cases7_per_100k" : 45.410448531384802,
        "RS" : "09778",
        "EWZ" : 145341,
        "BEZ" : "Landkreis",
        "OBJECTID" : 316,
        "county" : "LK Unterallgäu",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 530,
        "cases_per_100k" : 364.65966244899897,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 26,
        "GEN" : "Donau-Ries",
        "cases7_per_100k" : 14.949582532907799,
        "RS" : "09779",
        "EWZ" : 133783,
        "BEZ" : "Landkreis",
        "OBJECTID" : 317,
        "county" : "LK Donau-Ries",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 523,
        "cases_per_100k" : 390.93158323553803,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 7,
        "GEN" : "Oberallgäu",
        "cases7_per_100k" : 9.6148915440233793,
        "RS" : "09780",
        "EWZ" : 156008,
        "BEZ" : "Landkreis",
        "OBJECTID" : 318,
        "county" : "LK Oberallgäu",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 307,
        "cases_per_100k" : 196.784780267679,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "10",
        "deaths" : 114,
        "GEN" : "Regionalverband Saarbrücken",
        "cases7_per_100k" : 7.6053955718344799,
        "RS" : "10041",
        "EWZ" : 328714,
        "BEZ" : "Landkreis",
        "OBJECTID" : 319,
        "county" : "LK Stadtverband Saarbrücken",
        "IBZ" : 45,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1422,
        "cases_per_100k" : 432.594900125945,
        "BL" : "Saarland"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "10",
        "deaths" : 3,
        "GEN" : "Merzig-Wadern",
        "cases7_per_100k" : 29.057660083492301,
        "RS" : "10042",
        "EWZ" : 103243,
        "BEZ" : "Landkreis",
        "OBJECTID" : 320,
        "county" : "LK Merzig-Wadern",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 329,
        "cases_per_100k" : 318.66567224896602,
        "BL" : "Saarland"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "10",
        "deaths" : 12,
        "GEN" : "Neunkirchen",
        "cases7_per_100k" : 15.219773529769901,
        "RS" : "10043",
        "EWZ" : 131408,
        "BEZ" : "Landkreis",
        "OBJECTID" : 321,
        "county" : "LK Neunkirchen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 373,
        "cases_per_100k" : 283.84877633020801,
        "BL" : "Saarland"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "10",
        "deaths" : 24,
        "GEN" : "Saarlouis",
        "cases7_per_100k" : 12.350825189508001,
        "RS" : "10044",
        "EWZ" : 194319,
        "BEZ" : "Landkreis",
        "OBJECTID" : 322,
        "county" : "LK Saarlouis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 748,
        "cases_per_100k" : 384.93405173966499,
        "BL" : "Saarland"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "10",
        "deaths" : 18,
        "GEN" : "Saarpfalz-Kreis",
        "cases7_per_100k" : 28.833441165714898,
        "RS" : "10045",
        "EWZ" : 142196,
        "BEZ" : "Landkreis",
        "OBJECTID" : 323,
        "county" : "LK Saar-Pfalz-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 481,
        "cases_per_100k" : 338.26549270021701,
        "BL" : "Saarland"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "10",
        "deaths" : 6,
        "GEN" : "St. Wendel",
        "cases7_per_100k" : 40.226648430586003,
        "RS" : "10046",
        "EWZ" : 87007,
        "BEZ" : "Landkreis",
        "OBJECTID" : 324,
        "county" : "LK Sankt Wendel",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 233,
        "cases_per_100k" : 267.79454526647299,
        "BL" : "Saarland"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 1,
        "GEN" : "Brandenburg an der Havel",
        "cases7_per_100k" : 5.5413942147844404,
        "RS" : "12051",
        "EWZ" : 72184,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 326,
        "county" : "SK Brandenburg a.d.Havel",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 85,
        "cases_per_100k" : 117.754627064169,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 0,
        "GEN" : "Cottbus",
        "cases7_per_100k" : 22.071068841670201,
        "RS" : "12052",
        "EWZ" : 99678,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 327,
        "county" : "SK Cottbus",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 77,
        "cases_per_100k" : 77.248740945845597,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 0,
        "GEN" : "Frankfurt (Oder)",
        "cases7_per_100k" : 15.584145729078299,
        "RS" : "12053",
        "EWZ" : 57751,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 328,
        "county" : "SK Frankfurt (Oder)",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 83,
        "cases_per_100k" : 143.72045505705501,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 51,
        "GEN" : "Potsdam",
        "cases7_per_100k" : 11.090532012820701,
        "RS" : "12054",
        "EWZ" : 180334,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 329,
        "county" : "SK Potsdam",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 758,
        "cases_per_100k" : 420.33116328590302,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 29,
        "GEN" : "Barnim",
        "cases7_per_100k" : 7.0177711558808902,
        "RS" : "12060",
        "EWZ" : 185244,
        "BEZ" : "Landkreis",
        "OBJECTID" : 330,
        "county" : "LK Barnim",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 512,
        "cases_per_100k" : 276.39221783161702,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 8,
        "GEN" : "Dahme-Spreewald",
        "cases7_per_100k" : 10.5391970302885,
        "RS" : "12061",
        "EWZ" : 170791,
        "BEZ" : "Landkreis",
        "OBJECTID" : 331,
        "county" : "LK Dahme-Spreewald",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 359,
        "cases_per_100k" : 210.19842965964301,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 3,
        "GEN" : "Elbe-Elster",
        "cases7_per_100k" : 7.8564624313787101,
        "RS" : "12062",
        "EWZ" : 101827,
        "BEZ" : "Landkreis",
        "OBJECTID" : 332,
        "county" : "LK Elbe-Elster",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 118,
        "cases_per_100k" : 115.882820862836,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 6,
        "GEN" : "Havelland",
        "cases7_per_100k" : 7.9756558443151997,
        "RS" : "12063",
        "EWZ" : 162996,
        "BEZ" : "Landkreis",
        "OBJECTID" : 333,
        "county" : "LK Havelland",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 285,
        "cases_per_100k" : 174.85091658690999,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 4,
        "GEN" : "Märkisch-Oderland",
        "cases7_per_100k" : 9.7062083974028202,
        "RS" : "12064",
        "EWZ" : 195751,
        "BEZ" : "Landkreis",
        "OBJECTID" : 334,
        "county" : "LK Märkisch-Oderland",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 317,
        "cases_per_100k" : 161.94042431456299,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 9,
        "GEN" : "Oberhavel",
        "cases7_per_100k" : 12.6811764374348,
        "RS" : "12065",
        "EWZ" : 212914,
        "BEZ" : "Landkreis",
        "OBJECTID" : 335,
        "county" : "LK Oberhavel",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 434,
        "cases_per_100k" : 203.83816940173,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 2,
        "GEN" : "Oberspreewald-Lausitz",
        "cases7_per_100k" : 13.7147872836492,
        "RS" : "12066",
        "EWZ" : 109371,
        "BEZ" : "Landkreis",
        "OBJECTID" : 336,
        "county" : "LK Oberspreewald-Lausitz",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 94,
        "cases_per_100k" : 85.946000310868499,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 3,
        "GEN" : "Oder-Spree",
        "cases7_per_100k" : 22.370989301074399,
        "RS" : "12067",
        "EWZ" : 178803,
        "BEZ" : "Landkreis",
        "OBJECTID" : 337,
        "county" : "LK Oder-Spree",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 249,
        "cases_per_100k" : 139.259408399188,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 0,
        "GEN" : "Ostprignitz-Ruppin",
        "cases7_per_100k" : 2.02304245354589,
        "RS" : "12068",
        "EWZ" : 98861,
        "BEZ" : "Landkreis",
        "OBJECTID" : 338,
        "county" : "LK Ostprignitz-Ruppin",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 117,
        "cases_per_100k" : 118.347983532434,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 38,
        "GEN" : "Potsdam-Mittelmark",
        "cases7_per_100k" : 7.3880479853716698,
        "RS" : "12069",
        "EWZ" : 216566,
        "BEZ" : "Landkreis",
        "OBJECTID" : 339,
        "county" : "LK Potsdam-Mittelmark",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 695,
        "cases_per_100k" : 320.91833436458199,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 0,
        "GEN" : "Prignitz",
        "cases7_per_100k" : 5.2522387667743402,
        "RS" : "12070",
        "EWZ" : 76158,
        "BEZ" : "Landkreis",
        "OBJECTID" : 340,
        "county" : "LK Prignitz",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 53,
        "cases_per_100k" : 69.592163659760004,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 0,
        "GEN" : "Spree-Neiße",
        "cases7_per_100k" : 14.9489975378122,
        "RS" : "12071",
        "EWZ" : 113720,
        "BEZ" : "Landkreis",
        "OBJECTID" : 341,
        "county" : "LK Spree-Neiße",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 95,
        "cases_per_100k" : 83.538515652479802,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 13,
        "GEN" : "Teltow-Fläming",
        "cases7_per_100k" : 7.0589480990841,
        "RS" : "12072",
        "EWZ" : 169997,
        "BEZ" : "Landkreis",
        "OBJECTID" : 342,
        "county" : "LK Teltow-Fläming",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 299,
        "cases_per_100k" : 175.88545680217899,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 2,
        "GEN" : "Uckermark",
        "cases7_per_100k" : 5.8849739800079002,
        "RS" : "12073",
        "EWZ" : 118947,
        "BEZ" : "Landkreis",
        "OBJECTID" : 343,
        "county" : "LK Uckermark",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 62,
        "cases_per_100k" : 52.124055251498604,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "13",
        "deaths" : 2,
        "GEN" : "Rostock",
        "cases7_per_100k" : 9.0826087164361695,
        "RS" : "13003",
        "EWZ" : 209191,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 344,
        "county" : "SK Rostock",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 214,
        "cases_per_100k" : 102.29885606933399,
        "BL" : "Mecklenburg-Vorpommern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "13",
        "deaths" : 0,
        "GEN" : "Schwerin",
        "cases7_per_100k" : 2.0908910332138002,
        "RS" : "13004",
        "EWZ" : 95653,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 345,
        "county" : "SK Schwerin",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 135,
        "cases_per_100k" : 141.13514474193201,
        "BL" : "Mecklenburg-Vorpommern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "13",
        "deaths" : 3,
        "GEN" : "Mecklenburgische Seenplatte",
        "cases7_per_100k" : 13.5620015964413,
        "RS" : "13071",
        "EWZ" : 258074,
        "BEZ" : "Landkreis",
        "OBJECTID" : 346,
        "county" : "LK Mecklenburgische Seenplatte",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 219,
        "cases_per_100k" : 84.859381417732905,
        "BL" : "Mecklenburg-Vorpommern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "13",
        "deaths" : 3,
        "GEN" : "Rostock",
        "cases7_per_100k" : 4.1706442255113698,
        "RS" : "13072",
        "EWZ" : 215794,
        "BEZ" : "Landkreis",
        "OBJECTID" : 347,
        "county" : "LK Rostock",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 109,
        "cases_per_100k" : 50.511135620082101,
        "BL" : "Mecklenburg-Vorpommern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "13",
        "deaths" : 2,
        "GEN" : "Vorpommern-Rügen",
        "cases7_per_100k" : 3.1152370695409899,
        "RS" : "13073",
        "EWZ" : 224702,
        "BEZ" : "Landkreis",
        "OBJECTID" : 348,
        "county" : "LK Vorpommern-Rügen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 134,
        "cases_per_100k" : 59.634538188356103,
        "BL" : "Mecklenburg-Vorpommern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "13",
        "deaths" : 1,
        "GEN" : "Nordwestmecklenburg",
        "cases7_per_100k" : 4.4494730552624597,
        "RS" : "13074",
        "EWZ" : 157322,
        "BEZ" : "Landkreis",
        "OBJECTID" : 349,
        "county" : "LK Nordwestmecklenburg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 153,
        "cases_per_100k" : 97.252768207879399,
        "BL" : "Mecklenburg-Vorpommern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "13",
        "deaths" : 7,
        "GEN" : "Vorpommern-Greifswald",
        "cases7_per_100k" : 12.7322035624706,
        "RS" : "13075",
        "EWZ" : 235623,
        "BEZ" : "Landkreis",
        "OBJECTID" : 350,
        "county" : "LK Vorpommern-Greifswald",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 228,
        "cases_per_100k" : 96.764747074776196,
        "BL" : "Mecklenburg-Vorpommern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "13",
        "deaths" : 2,
        "GEN" : "Ludwigslust-Parchim",
        "cases7_per_100k" : 3.30533244561548,
        "RS" : "13076",
        "EWZ" : 211779,
        "BEZ" : "Landkreis",
        "OBJECTID" : 351,
        "county" : "LK Ludwigslust-Parchim",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 181,
        "cases_per_100k" : 85.466453236628794,
        "BL" : "Mecklenburg-Vorpommern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 6,
        "GEN" : "Chemnitz",
        "cases7_per_100k" : 14.2083512629195,
        "RS" : "14511",
        "EWZ" : 246334,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 352,
        "county" : "SK Chemnitz",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 376,
        "cases_per_100k" : 152.638287853078,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 48,
        "GEN" : "Erzgebirgskreis",
        "cases7_per_100k" : 37.3192256708504,
        "RS" : "14521",
        "EWZ" : 334948,
        "BEZ" : "Landkreis",
        "OBJECTID" : 353,
        "county" : "LK Erzgebirgskreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1003,
        "cases_per_100k" : 299.44946678290398,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 10,
        "GEN" : "Mittelsachsen",
        "cases7_per_100k" : 7.89216669571422,
        "RS" : "14522",
        "EWZ" : 304099,
        "BEZ" : "Landkreis",
        "OBJECTID" : 354,
        "county" : "LK Mittelsachsen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 459,
        "cases_per_100k" : 150.93768805553501,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 30,
        "GEN" : "Vogtlandkreis",
        "cases7_per_100k" : 10.6196099948229,
        "RS" : "14523",
        "EWZ" : 225997,
        "BEZ" : "Landkreis",
        "OBJECTID" : 355,
        "county" : "LK Vogtlandkreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 742,
        "cases_per_100k" : 328.32294233994298,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 53,
        "GEN" : "Zwickau",
        "cases7_per_100k" : 24.126830940755902,
        "RS" : "14524",
        "EWZ" : 315002,
        "BEZ" : "Landkreis",
        "OBJECTID" : 356,
        "county" : "LK Zwickau",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1078,
        "cases_per_100k" : 342.22004939651202,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 12,
        "GEN" : "Dresden",
        "cases7_per_100k" : 22.450519056000601,
        "RS" : "14612",
        "EWZ" : 556780,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 357,
        "county" : "SK Dresden",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1000,
        "cases_per_100k" : 179.60415244800501,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 24,
        "GEN" : "Bautzen",
        "cases7_per_100k" : 22.3513634331694,
        "RS" : "14625",
        "EWZ" : 299758,
        "BEZ" : "Landkreis",
        "OBJECTID" : 358,
        "county" : "LK Bautzen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 703,
        "cases_per_100k" : 234.522514828628,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 25,
        "GEN" : "Görlitz",
        "cases7_per_100k" : 8.3094272430507505,
        "RS" : "14626",
        "EWZ" : 252725,
        "BEZ" : "Landkreis",
        "OBJECTID" : 359,
        "county" : "LK Görlitz",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 437,
        "cases_per_100k" : 172.91522405776999,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 20,
        "GEN" : "Meißen",
        "cases7_per_100k" : 20.685346913953101,
        "RS" : "14627",
        "EWZ" : 241717,
        "BEZ" : "Landkreis",
        "OBJECTID" : 360,
        "county" : "LK Meißen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 343,
        "cases_per_100k" : 141.901479829718,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 2,
        "GEN" : "Sächsische Schweiz-Osterzgebirge",
        "cases7_per_100k" : 17.509141400568399,
        "RS" : "14628",
        "EWZ" : 245586,
        "BEZ" : "Landkreis",
        "OBJECTID" : 361,
        "county" : "LK Sächsische Schweiz-Osterzgebirge",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 516,
        "cases_per_100k" : 210.10969680682101,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 12,
        "GEN" : "Leipzig",
        "cases7_per_100k" : 8.4296419931045499,
        "RS" : "14713",
        "EWZ" : 593145,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 362,
        "county" : "SK Leipzig",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 984,
        "cases_per_100k" : 165.89535442429801,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 4,
        "GEN" : "Leipzig",
        "cases7_per_100k" : 9.2973165620072908,
        "RS" : "14729",
        "EWZ" : 258139,
        "BEZ" : "Landkreis",
        "OBJECTID" : 363,
        "county" : "LK Leipzig",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 274,
        "cases_per_100k" : 106.14436408291699,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 0,
        "GEN" : "Nordsachsen",
        "cases7_per_100k" : 6.0685442068159903,
        "RS" : "14730",
        "EWZ" : 197741,
        "BEZ" : "Landkreis",
        "OBJECTID" : 364,
        "county" : "LK Nordsachsen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 288,
        "cases_per_100k" : 145.645060963584,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 3,
        "GEN" : "Dessau-Roßlau",
        "cases7_per_100k" : 9.9871415552476197,
        "RS" : "15001",
        "EWZ" : 80103,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 365,
        "county" : "SK Dessau-Roßlau",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 127,
        "cases_per_100k" : 158.54587218955601,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 14,
        "GEN" : "Halle (Saale)",
        "cases7_per_100k" : 10.4706779135708,
        "RS" : "15002",
        "EWZ" : 238762,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 366,
        "county" : "SK Halle",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 533,
        "cases_per_100k" : 223.23485311733,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 5,
        "GEN" : "Magdeburg",
        "cases7_per_100k" : 4.6303117041651802,
        "RS" : "15003",
        "EWZ" : 237565,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 367,
        "county" : "SK Magdeburg",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 416,
        "cases_per_100k" : 175.109969902974,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 1,
        "GEN" : "Altmarkkreis Salzwedel",
        "cases7_per_100k" : 2.4046265013886701,
        "RS" : "15081",
        "EWZ" : 83173,
        "BEZ" : "Landkreis",
        "OBJECTID" : 368,
        "county" : "LK Altmarkkreis Salzwedel",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 59,
        "cases_per_100k" : 70.9364817909658,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 2,
        "GEN" : "Anhalt-Bitterfeld",
        "cases7_per_100k" : 3.15485279456861,
        "RS" : "15082",
        "EWZ" : 158486,
        "BEZ" : "Landkreis",
        "OBJECTID" : 369,
        "county" : "LK Anhalt-Bitterfeld",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 116,
        "cases_per_100k" : 73.192584833991603,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 13,
        "GEN" : "Börde",
        "cases7_per_100k" : 3.51035261492017,
        "RS" : "15083",
        "EWZ" : 170923,
        "BEZ" : "Landkreis",
        "OBJECTID" : 370,
        "county" : "LK Börde",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 214,
        "cases_per_100k" : 125.20257659881899,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 3,
        "GEN" : "Burgenlandkreis",
        "cases7_per_100k" : 11.741945584469301,
        "RS" : "15084",
        "EWZ" : 178846,
        "BEZ" : "Landkreis",
        "OBJECTID" : 371,
        "county" : "LK Burgenlandkreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 233,
        "cases_per_100k" : 130.27968196101699,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 6,
        "GEN" : "Harz",
        "cases7_per_100k" : 7.0320191270920303,
        "RS" : "15085",
        "EWZ" : 213310,
        "BEZ" : "Landkreis",
        "OBJECTID" : 372,
        "county" : "LK Harz",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 299,
        "cases_per_100k" : 140.171581266701,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 2,
        "GEN" : "Jerichower Land",
        "cases7_per_100k" : 7.81345924164797,
        "RS" : "15086",
        "EWZ" : 89589,
        "BEZ" : "Landkreis",
        "OBJECTID" : 373,
        "county" : "LK Jerichower Land",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 74,
        "cases_per_100k" : 82.599426268849996,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 2,
        "GEN" : "Mansfeld-Südharz",
        "cases7_per_100k" : 0.74105912169672905,
        "RS" : "15087",
        "EWZ" : 134942,
        "BEZ" : "Landkreis",
        "OBJECTID" : 374,
        "county" : "LK Mansfeld-Südharz",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 89,
        "cases_per_100k" : 65.954261831008907,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 7,
        "GEN" : "Saalekreis",
        "cases7_per_100k" : 3.26415145662759,
        "RS" : "15088",
        "EWZ" : 183815,
        "BEZ" : "Landkreis",
        "OBJECTID" : 375,
        "county" : "LK Saalekreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 198,
        "cases_per_100k" : 107.71699806871,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 1,
        "GEN" : "Salzlandkreis",
        "cases7_per_100k" : 2.6437541308658301,
        "RS" : "15089",
        "EWZ" : 189125,
        "BEZ" : "Landkreis",
        "OBJECTID" : 376,
        "county" : "LK Salzlandkreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 127,
        "cases_per_100k" : 67.151354923992102,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 6,
        "GEN" : "Stendal",
        "cases7_per_100k" : 3.5974458134724299,
        "RS" : "15090",
        "EWZ" : 111190,
        "BEZ" : "Landkreis",
        "OBJECTID" : 377,
        "county" : "LK Stendal",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 128,
        "cases_per_100k" : 115.118266031118,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 3,
        "GEN" : "Wittenberg",
        "cases7_per_100k" : 5.6021063920033898,
        "RS" : "15091",
        "EWZ" : 124953,
        "BEZ" : "Landkreis",
        "OBJECTID" : 378,
        "county" : "LK Wittenberg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 245,
        "cases_per_100k" : 196.07372372011901,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 2,
        "GEN" : "Erfurt",
        "cases7_per_100k" : 3.7386496931970599,
        "RS" : "16051",
        "EWZ" : 213981,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 379,
        "county" : "SK Erfurt",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 253,
        "cases_per_100k" : 118.23479654735701,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 22,
        "GEN" : "Gera",
        "cases7_per_100k" : 22.550335570469802,
        "RS" : "16052",
        "EWZ" : 93125,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 380,
        "county" : "SK Gera",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 312,
        "cases_per_100k" : 335.03355704697998,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 3,
        "GEN" : "Jena",
        "cases7_per_100k" : 13.471884177721099,
        "RS" : "16053",
        "EWZ" : 111343,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 381,
        "county" : "SK Jena",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 236,
        "cases_per_100k" : 211.95764439614501,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 2,
        "GEN" : "Suhl",
        "cases7_per_100k" : 10.872815243687,
        "RS" : "16054",
        "EWZ" : 36789,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 382,
        "county" : "SK Suhl",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 37,
        "cases_per_100k" : 100.573541004104,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 0,
        "GEN" : "Weimar",
        "cases7_per_100k" : 12.264671613417599,
        "RS" : "16055",
        "EWZ" : 65228,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 383,
        "county" : "SK Weimar",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 144,
        "cases_per_100k" : 220.764089041516,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 4,
        "GEN" : "Eisenach",
        "cases7_per_100k" : 0,
        "RS" : "16056",
        "EWZ" : 42250,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 384,
        "county" : "SK Eisenach",
        "IBZ" : 40,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 44,
        "cases_per_100k" : 104.14201183432,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 11,
        "GEN" : "Eichsfeld",
        "cases7_per_100k" : 6.9995800251984903,
        "RS" : "16061",
        "EWZ" : 100006,
        "BEZ" : "Landkreis",
        "OBJECTID" : 385,
        "county" : "LK Eichsfeld",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 185,
        "cases_per_100k" : 184.98890066595999,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 2,
        "GEN" : "Nordhausen",
        "cases7_per_100k" : 1.1988107797065299,
        "RS" : "16062",
        "EWZ" : 83416,
        "BEZ" : "Landkreis",
        "OBJECTID" : 386,
        "county" : "LK Nordhausen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 77,
        "cases_per_100k" : 92.3084300374029,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 2,
        "GEN" : "Wartburgkreis",
        "cases7_per_100k" : 6.7241582194429004,
        "RS" : "16063",
        "EWZ" : 118974,
        "BEZ" : "Landkreis",
        "OBJECTID" : 387,
        "county" : "LK Wartburgkreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 148,
        "cases_per_100k" : 124.39692705969399,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 3,
        "GEN" : "Unstrut-Hainich-Kreis",
        "cases7_per_100k" : 3.9126692229438902,
        "RS" : "16064",
        "EWZ" : 102232,
        "BEZ" : "Landkreis",
        "OBJECTID" : 388,
        "county" : "LK Unstrut-Hainich-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 119,
        "cases_per_100k" : 116.401909382581,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 0,
        "GEN" : "Kyffhäuserkreis",
        "cases7_per_100k" : 4.0424729154314702,
        "RS" : "16065",
        "EWZ" : 74212,
        "BEZ" : "Landkreis",
        "OBJECTID" : 389,
        "county" : "LK Kyffhäuserkreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 69,
        "cases_per_100k" : 92.976877054923705,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 6,
        "GEN" : "Schmalkalden-Meiningen",
        "cases7_per_100k" : 6.4043036920810801,
        "RS" : "16066",
        "EWZ" : 124916,
        "BEZ" : "Landkreis",
        "OBJECTID" : 390,
        "county" : "LK Schmalkalden-Meiningen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 215,
        "cases_per_100k" : 172.115661724679,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 30,
        "GEN" : "Gotha",
        "cases7_per_100k" : 6.6712129747679896,
        "RS" : "16067",
        "EWZ" : 134908,
        "BEZ" : "Landkreis",
        "OBJECTID" : 391,
        "county" : "LK Gotha",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 374,
        "cases_per_100k" : 277.225961395914,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 1,
        "GEN" : "Sömmerda",
        "cases7_per_100k" : 14.403618188889,
        "RS" : "16068",
        "EWZ" : 69427,
        "BEZ" : "Landkreis",
        "OBJECTID" : 392,
        "county" : "LK Sömmerda",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 75,
        "cases_per_100k" : 108.027136416668,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 1,
        "GEN" : "Hildburghausen",
        "cases7_per_100k" : 0,
        "RS" : "16069",
        "EWZ" : 63197,
        "BEZ" : "Landkreis",
        "OBJECTID" : 393,
        "county" : "LK Hildburghausen",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 96,
        "cases_per_100k" : 151.905944902448,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 7,
        "GEN" : "Ilm-Kreis",
        "cases7_per_100k" : 3.7647413152123801,
        "RS" : "16070",
        "EWZ" : 106249,
        "BEZ" : "Landkreis",
        "OBJECTID" : 394,
        "county" : "LK Ilm-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 222,
        "cases_per_100k" : 208.943142994287,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 6,
        "GEN" : "Weimarer Land",
        "cases7_per_100k" : 10.9547689760943,
        "RS" : "16071",
        "EWZ" : 82156,
        "BEZ" : "Landkreis",
        "OBJECTID" : 395,
        "county" : "LK Weimarer Land",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 158,
        "cases_per_100k" : 192.317055358099,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 22,
        "GEN" : "Sonneberg",
        "cases7_per_100k" : 1.73259178404976,
        "RS" : "16072",
        "EWZ" : 57717,
        "BEZ" : "Landkreis",
        "OBJECTID" : 396,
        "county" : "LK Sonneberg",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 324,
        "cases_per_100k" : 561.35973803212198,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 0,
        "GEN" : "Saalfeld-Rudolstadt",
        "cases7_per_100k" : 6.7830114632893697,
        "RS" : "16073",
        "EWZ" : 103199,
        "BEZ" : "Landkreis",
        "OBJECTID" : 397,
        "county" : "LK Saalfeld-Rudolstadt",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 113,
        "cases_per_100k" : 109.497185050243,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 3,
        "GEN" : "Saale-Holzland-Kreis",
        "cases7_per_100k" : 15.6720916214587,
        "RS" : "16074",
        "EWZ" : 82950,
        "BEZ" : "Landkreis",
        "OBJECTID" : 398,
        "county" : "LK Saale-Holzland-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 117,
        "cases_per_100k" : 141.04882459312799,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 12,
        "GEN" : "Saale-Orla-Kreis",
        "cases7_per_100k" : 43.580037852375703,
        "RS" : "16075",
        "EWZ" : 80312,
        "BEZ" : "Landkreis",
        "OBJECTID" : 399,
        "county" : "LK Saale-Orla-Kreis",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 214,
        "cases_per_100k" : 266.46080286881198,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 48,
        "GEN" : "Greiz",
        "cases7_per_100k" : 9.2404361485862108,
        "RS" : "16076",
        "EWZ" : 97398,
        "BEZ" : "Landkreis",
        "OBJECTID" : 400,
        "county" : "LK Greiz",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 709,
        "cases_per_100k" : 727.94102548306898,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 4,
        "GEN" : "Altenburger Land",
        "cases7_per_100k" : 10.067902408466001,
        "RS" : "16077",
        "EWZ" : 89393,
        "BEZ" : "Landkreis",
        "OBJECTID" : 401,
        "county" : "LK Altenburger Land",
        "IBZ" : 43,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 122,
        "cases_per_100k" : 136.476010425872,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 22,
        "GEN" : "Berlin Reinickendorf",
        "cases7_per_100k" : 50.444955311930798,
        "RS" : "11012",
        "EWZ" : 259689,
        "BEZ" : "Bezirk",
        "OBJECTID" : 404,
        "county" : "SK Berlin Reinickendorf",
        "IBZ" : null,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1240,
        "cases_per_100k" : 477.494233486979,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 23,
        "GEN" : "Berlin Charlottenburg-Wilmersdorf",
        "cases7_per_100k" : 54.425674564370297,
        "RS" : "11004",
        "EWZ" : 334401,
        "BEZ" : "Bezirk",
        "OBJECTID" : 405,
        "county" : "SK Berlin Charlottenburg-Wilmersdorf",
        "IBZ" : null,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1703,
        "cases_per_100k" : 509.26881199517902,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 11,
        "GEN" : "Berlin Treptow-Köpenick",
        "cases7_per_100k" : 24.766593617723899,
        "RS" : "11009",
        "EWZ" : 266488,
        "BEZ" : "Bezirk",
        "OBJECTID" : 406,
        "county" : "SK Berlin Treptow-Köpenick",
        "IBZ" : null,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 706,
        "cases_per_100k" : 264.92750142595497,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 37,
        "GEN" : "Berlin Pankow",
        "cases7_per_100k" : 30.650493925172601,
        "RS" : "11003",
        "EWZ" : 398036,
        "BEZ" : "Bezirk",
        "OBJECTID" : 407,
        "county" : "SK Berlin Pankow",
        "IBZ" : null,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1447,
        "cases_per_100k" : 363.53495663708799,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 43,
        "GEN" : "Berlin Neukölln",
        "cases7_per_100k" : 133.90507687085599,
        "RS" : "11008",
        "EWZ" : 321123,
        "BEZ" : "Bezirk",
        "OBJECTID" : 408,
        "county" : "SK Berlin Neukölln",
        "IBZ" : null,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2434,
        "cases_per_100k" : 757.96501652015002,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 13,
        "GEN" : "Berlin Lichtenberg",
        "cases7_per_100k" : 19.195733660940501,
        "RS" : "11011",
        "EWZ" : 286522,
        "BEZ" : "Bezirk",
        "OBJECTID" : 409,
        "county" : "SK Berlin Lichtenberg",
        "IBZ" : null,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 899,
        "cases_per_100k" : 313.76299202155502,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 7,
        "GEN" : "Berlin Marzahn-Hellersdorf",
        "cases7_per_100k" : 21.295447717774501,
        "RS" : "11010",
        "EWZ" : 262967,
        "BEZ" : "Bezirk",
        "OBJECTID" : 410,
        "county" : "SK Berlin Marzahn-Hellersdorf",
        "IBZ" : null,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 786,
        "cases_per_100k" : 298.89681975304899,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 9,
        "GEN" : "Berlin Spandau",
        "cases7_per_100k" : 31.796635413921098,
        "RS" : "11005",
        "EWZ" : 239019,
        "BEZ" : "Bezirk",
        "OBJECTID" : 411,
        "county" : "SK Berlin Spandau",
        "IBZ" : null,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 928,
        "cases_per_100k" : 388.25365347524701,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 13,
        "GEN" : "Berlin Steglitz-Zehlendorf",
        "cases7_per_100k" : 40.373688268796101,
        "RS" : "11006",
        "EWZ" : 302177,
        "BEZ" : "Bezirk",
        "OBJECTID" : 412,
        "county" : "SK Berlin Steglitz-Zehlendorf",
        "IBZ" : null,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1104,
        "cases_per_100k" : 365.34878564549899,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 21,
        "GEN" : "Berlin Mitte",
        "cases7_per_100k" : 90.875657582654199,
        "RS" : "11001",
        "EWZ" : 375238,
        "BEZ" : "Bezirk",
        "OBJECTID" : 413,
        "county" : "SK Berlin Mitte",
        "IBZ" : null,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 2822,
        "cases_per_100k" : 752.05602844061605,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 9,
        "GEN" : "Berlin Friedrichshain-Kreuzberg",
        "cases7_per_100k" : 55.3075774926523,
        "RS" : "11002",
        "EWZ" : 282059,
        "BEZ" : "Bezirk",
        "OBJECTID" : 414,
        "county" : "SK Berlin Friedrichshain-Kreuzberg",
        "IBZ" : null,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1743,
        "cases_per_100k" : 617.955817754441,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 26,
        "GEN" : "Berlin Tempelhof-Schöneberg",
        "cases7_per_100k" : 67.296326205774605,
        "RS" : "11007",
        "EWZ" : 341772,
        "BEZ" : "Bezirk",
        "OBJECTID" : 415,
        "county" : "SK Berlin Tempelhof-Schöneberg",
        "IBZ" : null,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "cases" : 1743,
        "cases_per_100k" : 509.989115550718,
        "BL" : "Berlin"
      }
    }
  ],
  "objectIdFieldName" : "OBJECTID",
  "fields" : [
    {
      "domain" : null,
      "defaultValue" : null,
      "alias" : "OBJECTID",
      "name" : "OBJECTID",
      "type" : "esriFieldTypeOID",
      "sqlType" : "sqlTypeOther"
    },
    {
      "sqlType" : "sqlTypeOther",
      "alias" : "Bundesland",
      "length" : 256,
      "domain" : null,
      "defaultValue" : null,
      "type" : "esriFieldTypeString",
      "name" : "BL"
    },
    {
      "sqlType" : "sqlTypeOther",
      "alias" : "Bundesland ID",
      "length" : 256,
      "domain" : null,
      "defaultValue" : null,
      "type" : "esriFieldTypeString",
      "name" : "BL_ID"
    },
    {
      "sqlType" : "sqlTypeOther",
      "alias" : "BEZ",
      "length" : 16,
      "domain" : null,
      "defaultValue" : null,
      "type" : "esriFieldTypeString",
      "name" : "BEZ"
    },
    {
      "domain" : null,
      "defaultValue" : null,
      "alias" : "IBZ",
      "name" : "IBZ",
      "type" : "esriFieldTypeSmallInteger",
      "sqlType" : "sqlTypeOther"
    },
    {
      "sqlType" : "sqlTypeOther",
      "alias" : "GEN",
      "length" : 33,
      "domain" : null,
      "defaultValue" : null,
      "type" : "esriFieldTypeString",
      "name" : "GEN"
    },
    {
      "sqlType" : "sqlTypeOther",
      "alias" : "Landkreis",
      "length" : 256,
      "domain" : null,
      "defaultValue" : null,
      "type" : "esriFieldTypeString",
      "name" : "county"
    },
    {
      "sqlType" : "sqlTypeOther",
      "alias" : "Aktualisierung",
      "length" : 256,
      "domain" : null,
      "defaultValue" : null,
      "type" : "esriFieldTypeString",
      "name" : "last_update"
    },
    {
      "domain" : null,
      "defaultValue" : null,
      "alias" : "Fälle der letzten 7 Tage/100.000 EW",
      "name" : "cases7_per_100k",
      "type" : "esriFieldTypeDouble",
      "sqlType" : "sqlTypeOther"
    },
    {
      "domain" : null,
      "defaultValue" : null,
      "alias" : "EWZ",
      "name" : "EWZ",
      "type" : "esriFieldTypeInteger",
      "sqlType" : "sqlTypeOther"
    },
    {
      "domain" : null,
      "defaultValue" : null,
      "alias" : "Anzahl Fälle",
      "name" : "cases",
      "type" : "esriFieldTypeInteger",
      "sqlType" : "sqlTypeOther"
    },
    {
      "domain" : null,
      "defaultValue" : null,
      "alias" : "Fälle/100.000 EW",
      "name" : "cases_per_100k",
      "type" : "esriFieldTypeDouble",
      "sqlType" : "sqlTypeOther"
    },
    {
      "sqlType" : "sqlTypeOther",
      "alias" : "RS",
      "length" : 5,
      "domain" : null,
      "defaultValue" : null,
      "type" : "esriFieldTypeString",
      "name" : "RS"
    },
    {
      "domain" : null,
      "defaultValue" : null,
      "alias" : "Anzahl Todesfälle",
      "name" : "deaths",
      "type" : "esriFieldTypeInteger",
      "sqlType" : "sqlTypeOther"
    }
  ]
}
"""

// MARK: var jsonDummyDataRecovered_20201010 -
var jsonDummyDataRecovered_20201010: String = """
{
  "objectIdFieldName" : "ObjectId",
  "fields" : [
    {
      "domain" : null,
      "defaultValue" : null,
      "alias" : "sumGenesene",
      "name" : "sumGenesene",
      "type" : "esriFieldTypeDouble",
      "sqlType" : "sqlTypeFloat"
    },
    {
      "domain" : null,
      "defaultValue" : null,
      "alias" : "last_update",
      "name" : "last_update",
      "type" : "esriFieldTypeDouble",
      "sqlType" : "sqlTypeFloat"
    },
    {
      "sqlType" : "sqlTypeOther",
      "alias" : "Landkreis ID",
      "length" : 256,
      "domain" : null,
      "defaultValue" : null,
      "type" : "esriFieldTypeString",
      "name" : "IdLandkreis"
    }
  ],
  "globalIdFieldName" : "",
  "features" : [
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01001",
        "sumGenesene" : 108
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01003",
        "sumGenesene" : 289
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01051",
        "sumGenesene" : 200
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01053",
        "sumGenesene" : 339
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01055",
        "sumGenesene" : 134
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01058",
        "sumGenesene" : 338
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01059",
        "sumGenesene" : 184
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03251",
        "sumGenesene" : 591
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03353",
        "sumGenesene" : 826
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03354",
        "sumGenesene" : 43
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03358",
        "sumGenesene" : 122
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03359",
        "sumGenesene" : 354
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03361",
        "sumGenesene" : 357
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03403",
        "sumGenesene" : 297
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03452",
        "sumGenesene" : 207
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03458",
        "sumGenesene" : 456
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03459",
        "sumGenesene" : 1396
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "04011",
        "sumGenesene" : 1930
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05112",
        "sumGenesene" : 2742
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05116",
        "sumGenesene" : 1038
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05119",
        "sumGenesene" : 589
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05124",
        "sumGenesene" : 1624
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05158",
        "sumGenesene" : 1898
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05314",
        "sumGenesene" : 1240
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05316",
        "sumGenesene" : 570
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05362",
        "sumGenesene" : 1657
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05374",
        "sumGenesene" : 851
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05378",
        "sumGenesene" : 726
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05512",
        "sumGenesene" : 339
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05513",
        "sumGenesene" : 1134
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05762",
        "sumGenesene" : 420
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05766",
        "sumGenesene" : 964
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05915",
        "sumGenesene" : 1051
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05966",
        "sumGenesene" : 745
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05974",
        "sumGenesene" : 552
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05978",
        "sumGenesene" : 1291
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06412",
        "sumGenesene" : 3300
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06432",
        "sumGenesene" : 695
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06438",
        "sumGenesene" : 1193
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06439",
        "sumGenesene" : 490
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06532",
        "sumGenesene" : 507
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06533",
        "sumGenesene" : 460
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06534",
        "sumGenesene" : 442
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06631",
        "sumGenesene" : 585
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06635",
        "sumGenesene" : 250
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07111",
        "sumGenesene" : 329
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07132",
        "sumGenesene" : 238
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07141",
        "sumGenesene" : 201
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07317",
        "sumGenesene" : 49
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07333",
        "sumGenesene" : 173
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08116",
        "sumGenesene" : 2508
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08119",
        "sumGenesene" : 2097
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08121",
        "sumGenesene" : 675
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08125",
        "sumGenesene" : 1254
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08127",
        "sumGenesene" : 1040
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08212",
        "sumGenesene" : 660
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08226",
        "sumGenesene" : 1561
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08237",
        "sumGenesene" : 614
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08311",
        "sumGenesene" : 1175
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08316",
        "sumGenesene" : 626
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08336",
        "sumGenesene" : 829
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08416",
        "sumGenesene" : 1476
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08435",
        "sumGenesene" : 537
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09161",
        "sumGenesene" : 747
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09172",
        "sumGenesene" : 420
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09176",
        "sumGenesene" : 407
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09179",
        "sumGenesene" : 1272
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09183",
        "sumGenesene" : 630
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09184",
        "sumGenesene" : 1917
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09271",
        "sumGenesene" : 441
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09279",
        "sumGenesene" : 959
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09363",
        "sumGenesene" : 370
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09371",
        "sumGenesene" : 494
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09376",
        "sumGenesene" : 574
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09471",
        "sumGenesene" : 452
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09474",
        "sumGenesene" : 293
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09475",
        "sumGenesene" : 510
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09562",
        "sumGenesene" : 377
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09563",
        "sumGenesene" : 555
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09571",
        "sumGenesene" : 666
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09577",
        "sumGenesene" : 426
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09672",
        "sumGenesene" : 276
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09676",
        "sumGenesene" : 429
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09678",
        "sumGenesene" : 628
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09679",
        "sumGenesene" : 545
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09763",
        "sumGenesene" : 171
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09764",
        "sumGenesene" : 134
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09771",
        "sumGenesene" : 480
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09778",
        "sumGenesene" : 378
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09779",
        "sumGenesene" : 456
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "10044",
        "sumGenesene" : 680
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11002",
        "sumGenesene" : 1461
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12061",
        "sumGenesene" : 323
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12063",
        "sumGenesene" : 256
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12069",
        "sumGenesene" : 622
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12071",
        "sumGenesene" : 75
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12073",
        "sumGenesene" : 50
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13072",
        "sumGenesene" : 95
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13075",
        "sumGenesene" : 178
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14511",
        "sumGenesene" : 306
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14521",
        "sumGenesene" : 723
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14523",
        "sumGenesene" : 670
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15084",
        "sumGenesene" : 169
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15090",
        "sumGenesene" : 115
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16052",
        "sumGenesene" : 261
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16055",
        "sumGenesene" : 131
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16062",
        "sumGenesene" : 74
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16072",
        "sumGenesene" : 301
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01056",
        "sumGenesene" : 809
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01062",
        "sumGenesene" : 605
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03103",
        "sumGenesene" : 394
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03151",
        "sumGenesene" : 246
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03155",
        "sumGenesene" : 178
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03252",
        "sumGenesene" : 220
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03257",
        "sumGenesene" : 297
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03355",
        "sumGenesene" : 239
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03451",
        "sumGenesene" : 223
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03455",
        "sumGenesene" : 106
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03460",
        "sumGenesene" : 643
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05113",
        "sumGenesene" : 1981
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05114",
        "sumGenesene" : 982
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05120",
        "sumGenesene" : 480
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05122",
        "sumGenesene" : 625
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05162",
        "sumGenesene" : 1299
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05166",
        "sumGenesene" : 950
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05315",
        "sumGenesene" : 3981
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05358",
        "sumGenesene" : 961
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05366",
        "sumGenesene" : 742
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05562",
        "sumGenesene" : 2170
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05754",
        "sumGenesene" : 2982
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05914",
        "sumGenesene" : 774
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05916",
        "sumGenesene" : 545
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05962",
        "sumGenesene" : 1049
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06411",
        "sumGenesene" : 419
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06414",
        "sumGenesene" : 1025
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06431",
        "sumGenesene" : 635
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06434",
        "sumGenesene" : 504
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06437",
        "sumGenesene" : 427
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06531",
        "sumGenesene" : 468
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06611",
        "sumGenesene" : 566
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07133",
        "sumGenesene" : 316
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07134",
        "sumGenesene" : 121
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07232",
        "sumGenesene" : 301
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07313",
        "sumGenesene" : 88
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07337",
        "sumGenesene" : 176
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07340",
        "sumGenesene" : 144
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08128",
        "sumGenesene" : 515
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08135",
        "sumGenesene" : 580
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08216",
        "sumGenesene" : 678
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08221",
        "sumGenesene" : 512
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08225",
        "sumGenesene" : 504
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08315",
        "sumGenesene" : 1405
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08327",
        "sumGenesene" : 584
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08335",
        "sumGenesene" : 729
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08415",
        "sumGenesene" : 1738
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08421",
        "sumGenesene" : 556
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09173",
        "sumGenesene" : 629
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09174",
        "sumGenesene" : 1208
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09180",
        "sumGenesene" : 398
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09182",
        "sumGenesene" : 725
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09186",
        "sumGenesene" : 477
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09189",
        "sumGenesene" : 1351
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09263",
        "sumGenesene" : 452
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09272",
        "sumGenesene" : 230
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09277",
        "sumGenesene" : 812
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09372",
        "sumGenesene" : 489
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09375",
        "sumGenesene" : 698
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09463",
        "sumGenesene" : 143
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09464",
        "sumGenesene" : 182
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09472",
        "sumGenesene" : 424
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09478",
        "sumGenesene" : 352
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09479",
        "sumGenesene" : 720
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09561",
        "sumGenesene" : 186
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09572",
        "sumGenesene" : 366
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09573",
        "sumGenesene" : 536
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09663",
        "sumGenesene" : 614
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09673",
        "sumGenesene" : 269
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09674",
        "sumGenesene" : 216
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09677",
        "sumGenesene" : 225
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09772",
        "sumGenesene" : 628
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09777",
        "sumGenesene" : 657
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "10042",
        "sumGenesene" : 282
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11004",
        "sumGenesene" : 1390
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11009",
        "sumGenesene" : 551
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11010",
        "sumGenesene" : 697
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11012",
        "sumGenesene" : 1028
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12051",
        "sumGenesene" : 79
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12053",
        "sumGenesene" : 72
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12066",
        "sumGenesene" : 75
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12072",
        "sumGenesene" : 260
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13004",
        "sumGenesene" : 127
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13074",
        "sumGenesene" : 127
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14524",
        "sumGenesene" : 929
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14626",
        "sumGenesene" : 364
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14628",
        "sumGenesene" : 429
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14713",
        "sumGenesene" : 818
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14729",
        "sumGenesene" : 236
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15001",
        "sumGenesene" : 93
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15003",
        "sumGenesene" : 383
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15082",
        "sumGenesene" : 106
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16054",
        "sumGenesene" : 31
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16061",
        "sumGenesene" : 167
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16063",
        "sumGenesene" : 131
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16064",
        "sumGenesene" : 111
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16069",
        "sumGenesene" : 93
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16074",
        "sumGenesene" : 97
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01057",
        "sumGenesene" : 157
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01060",
        "sumGenesene" : 459
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "02000",
        "sumGenesene" : 7048
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03101",
        "sumGenesene" : 455
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03153",
        "sumGenesene" : 285
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03154",
        "sumGenesene" : 164
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03157",
        "sumGenesene" : 264
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03255",
        "sumGenesene" : 127
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03256",
        "sumGenesene" : 114
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03351",
        "sumGenesene" : 287
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03356",
        "sumGenesene" : 179
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03401",
        "sumGenesene" : 179
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03456",
        "sumGenesene" : 281
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03462",
        "sumGenesene" : 66
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05111",
        "sumGenesene" : 2805
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05154",
        "sumGenesene" : 1035
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05170",
        "sumGenesene" : 1357
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05515",
        "sumGenesene" : 1047
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05554",
        "sumGenesene" : 1331
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05558",
        "sumGenesene" : 930
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05570",
        "sumGenesene" : 1026
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05711",
        "sumGenesene" : 796
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05758",
        "sumGenesene" : 635
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05774",
        "sumGenesene" : 870
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05954",
        "sumGenesene" : 859
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05958",
        "sumGenesene" : 865
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05970",
        "sumGenesene" : 708
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06435",
        "sumGenesene" : 1318
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06436",
        "sumGenesene" : 715
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06440",
        "sumGenesene" : 592
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06535",
        "sumGenesene" : 181
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07131",
        "sumGenesene" : 349
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07138",
        "sumGenesene" : 396
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07233",
        "sumGenesene" : 140
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07235",
        "sumGenesene" : 387
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07312",
        "sumGenesene" : 288
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07314",
        "sumGenesene" : 602
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07318",
        "sumGenesene" : 155
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07319",
        "sumGenesene" : 318
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07320",
        "sumGenesene" : 62
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07331",
        "sumGenesene" : 361
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07335",
        "sumGenesene" : 205
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07336",
        "sumGenesene" : 134
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08111",
        "sumGenesene" : 2666
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08118",
        "sumGenesene" : 2369
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08136",
        "sumGenesene" : 1779
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08211",
        "sumGenesene" : 202
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08222",
        "sumGenesene" : 1072
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08231",
        "sumGenesene" : 599
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08325",
        "sumGenesene" : 746
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08326",
        "sumGenesene" : 653
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08425",
        "sumGenesene" : 852
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08426",
        "sumGenesene" : 773
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08437",
        "sumGenesene" : 855
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09171",
        "sumGenesene" : 694
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09178",
        "sumGenesene" : 1191
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09185",
        "sumGenesene" : 413
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09187",
        "sumGenesene" : 2379
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09262",
        "sumGenesene" : 203
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09273",
        "sumGenesene" : 637
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09275",
        "sumGenesene" : 781
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09276",
        "sumGenesene" : 230
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09278",
        "sumGenesene" : 595
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09361",
        "sumGenesene" : 125
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09373",
        "sumGenesene" : 541
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09374",
        "sumGenesene" : 816
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09462",
        "sumGenesene" : 254
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09473",
        "sumGenesene" : 411
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09477",
        "sumGenesene" : 303
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09565",
        "sumGenesene" : 120
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09574",
        "sumGenesene" : 741
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09661",
        "sumGenesene" : 183
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09671",
        "sumGenesene" : 664
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09761",
        "sumGenesene" : 1021
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09773",
        "sumGenesene" : 346
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09774",
        "sumGenesene" : 402
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09775",
        "sumGenesene" : 757
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09776",
        "sumGenesene" : 302
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01002",
        "sumGenesene" : 452
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01004",
        "sumGenesene" : 159
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01054",
        "sumGenesene" : 130
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01061",
        "sumGenesene" : 221
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03102",
        "sumGenesene" : 257
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03158",
        "sumGenesene" : 221
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03159",
        "sumGenesene" : 1371
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03241",
        "sumGenesene" : 3724
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03254",
        "sumGenesene" : 556
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03352",
        "sumGenesene" : 415
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03357",
        "sumGenesene" : 282
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03360",
        "sumGenesene" : 97
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03402",
        "sumGenesene" : 44
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03404",
        "sumGenesene" : 742
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03405",
        "sumGenesene" : 52
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03453",
        "sumGenesene" : 610
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03454",
        "sumGenesene" : 716
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03457",
        "sumGenesene" : 238
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03461",
        "sumGenesene" : 160
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "04012",
        "sumGenesene" : 267
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05117",
        "sumGenesene" : 607
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05334",
        "sumGenesene" : 2625
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05370",
        "sumGenesene" : 2065
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05382",
        "sumGenesene" : 1925
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05566",
        "sumGenesene" : 1737
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05770",
        "sumGenesene" : 888
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05911",
        "sumGenesene" : 1174
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05913",
        "sumGenesene" : 2019
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06413",
        "sumGenesene" : 575
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06433",
        "sumGenesene" : 975
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06632",
        "sumGenesene" : 353
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06633",
        "sumGenesene" : 528
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06634",
        "sumGenesene" : 640
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06636",
        "sumGenesene" : 240
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07135",
        "sumGenesene" : 168
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07137",
        "sumGenesene" : 457
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07140",
        "sumGenesene" : 221
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07143",
        "sumGenesene" : 563
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07211",
        "sumGenesene" : 205
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07231",
        "sumGenesene" : 248
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07311",
        "sumGenesene" : 83
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07315",
        "sumGenesene" : 994
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07316",
        "sumGenesene" : 150
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07332",
        "sumGenesene" : 371
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07334",
        "sumGenesene" : 356
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07338",
        "sumGenesene" : 379
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07339",
        "sumGenesene" : 579
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08115",
        "sumGenesene" : 1965
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08117",
        "sumGenesene" : 1112
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08126",
        "sumGenesene" : 809
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08215",
        "sumGenesene" : 1317
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08235",
        "sumGenesene" : 879
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08236",
        "sumGenesene" : 810
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08317",
        "sumGenesene" : 1349
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08337",
        "sumGenesene" : 395
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08417",
        "sumGenesene" : 1331
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08436",
        "sumGenesene" : 858
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09162",
        "sumGenesene" : 10639
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09163",
        "sumGenesene" : 690
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09175",
        "sumGenesene" : 746
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09177",
        "sumGenesene" : 845
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09181",
        "sumGenesene" : 457
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09188",
        "sumGenesene" : 772
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09190",
        "sumGenesene" : 473
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09261",
        "sumGenesene" : 436
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09274",
        "sumGenesene" : 820
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09362",
        "sumGenesene" : 890
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09377",
        "sumGenesene" : 1069
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09461",
        "sumGenesene" : 223
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09476",
        "sumGenesene" : 182
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09564",
        "sumGenesene" : 1963
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09575",
        "sumGenesene" : 290
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09576",
        "sumGenesene" : 354
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09662",
        "sumGenesene" : 215
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09675",
        "sumGenesene" : 287
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09762",
        "sumGenesene" : 182
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "10041",
        "sumGenesene" : 1253
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11003",
        "sumGenesene" : 1245
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09780",
        "sumGenesene" : 269
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "10043",
        "sumGenesene" : 327
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "10045",
        "sumGenesene" : 410
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "10046",
        "sumGenesene" : 184
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11001",
        "sumGenesene" : 2280
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12052",
        "sumGenesene" : 55
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12054",
        "sumGenesene" : 684
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12065",
        "sumGenesene" : 386
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12067",
        "sumGenesene" : 194
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12068",
        "sumGenesene" : 109
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13071",
        "sumGenesene" : 164
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14612",
        "sumGenesene" : 812
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14625",
        "sumGenesene" : 575
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14627",
        "sumGenesene" : 265
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14730",
        "sumGenesene" : 232
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15002",
        "sumGenesene" : 450
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15083",
        "sumGenesene" : 193
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15085",
        "sumGenesene" : 279
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15086",
        "sumGenesene" : 65
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15087",
        "sumGenesene" : 84
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15088",
        "sumGenesene" : 164
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15089",
        "sumGenesene" : 107
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15091",
        "sumGenesene" : 218
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16051",
        "sumGenesene" : 228
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16070",
        "sumGenesene" : 205
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16071",
        "sumGenesene" : 137
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11005",
        "sumGenesene" : 792
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11006",
        "sumGenesene" : 899
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11007",
        "sumGenesene" : 1350
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11008",
        "sumGenesene" : 1802
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11011",
        "sumGenesene" : 762
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12060",
        "sumGenesene" : 462
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12062",
        "sumGenesene" : 105
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12064",
        "sumGenesene" : 282
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12070",
        "sumGenesene" : 49
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13003",
        "sumGenesene" : 184
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13073",
        "sumGenesene" : 122
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13076",
        "sumGenesene" : 152
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14522",
        "sumGenesene" : 387
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15081",
        "sumGenesene" : 53
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16053",
        "sumGenesene" : 212
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16056",
        "sumGenesene" : 40
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16065",
        "sumGenesene" : 65
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16066",
        "sumGenesene" : 194
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16067",
        "sumGenesene" : 335
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16068",
        "sumGenesene" : 62
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16073",
        "sumGenesene" : 91
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16075",
        "sumGenesene" : 179
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16076",
        "sumGenesene" : 648
      }
    },
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16077",
        "sumGenesene" : 108
      }
    }
  ],
  "uniqueIdField" : {
    "name" : "ObjectId",
    "isSystemMaintained" : true
  }
}
"""

// MARK: var jsonDummyDataNewToday_20201010 -
var jsonDummyDataNewToday_20201010:  String = """
{
  "globalIdFieldName" : "",
  "uniqueIdField" : {
    "name" : "ObjectId",
    "isSystemMaintained" : true
  },
  "features" : [
    {
      "attributes" : {
        "IdLandkreis" : "01051",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01060",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 25
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "02000",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 145
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03103",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03155",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03157",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03257",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03351",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03355",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03361",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03452",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 15
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03456",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 21
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03461",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05112",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 38
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05113",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 22
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05114",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05116",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 23
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05154",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 24
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05315",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 113
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05316",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05358",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 19
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05362",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 40
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05512",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05570",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 15
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05754",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 22
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05762",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05913",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05958",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06412",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 124
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06432",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 12
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06435",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06438",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06532",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06534",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06535",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06631",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07111",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07133",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07134",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07141",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07313",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07319",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08121",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08128",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08225",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08226",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 23
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08311",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 17
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08315",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08316",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08327",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08336",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08415",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 30
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09161",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09173",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09174",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09183",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09189",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09371",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09376",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09462",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09471",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09478",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09479",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09562",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09564",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09571",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09573",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09574",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09661",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09672",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09673",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01003",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01056",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01058",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01062",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03153",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03154",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03241",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 89
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03251",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03352",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03461",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05378",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 21
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05382",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 49
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05554",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05558",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05566",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 27
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05758",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 21
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05766",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 22
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05774",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05911",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 31
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05915",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 17
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05966",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06636",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07132",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07138",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 13
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07140",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07231",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07233",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07235",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07311",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07314",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07316",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07332",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07335",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08116",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 58
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08118",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 42
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08119",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 19
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08126",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08212",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 17
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08236",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 19
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08325",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08335",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08415",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08437",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09162",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 144
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09178",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09181",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09185",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 12
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09187",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 19
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09273",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09275",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09278",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09279",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09362",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09373",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 12
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09374",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09473",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09474",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09476",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09477",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09565",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09576",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09662",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09678",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09763",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09771",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09774",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "10043",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "10045",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "10046",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11001",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11003",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09674",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09676",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09773",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09775",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09780",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11002",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 27
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11004",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 47
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11007",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11008",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11011",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12061",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12069",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "13075",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14511",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14521",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 71
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14628",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 13
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15003",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15091",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16062",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16072",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16074",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11006",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11011",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 12
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12060",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12065",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12067",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 13
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12073",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "13076",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14625",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14627",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 27
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15083",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15085",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15088",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15089",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16052",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16066",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16076",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01053",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01055",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01062",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03151",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03252",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03254",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03358",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03359",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03360",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03403",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03404",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03451",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03458",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03459",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 25
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03460",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 17
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05119",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 15
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05120",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05122",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 15
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05124",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 62
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05154",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05158",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 87
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05162",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 13
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05166",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 13
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05314",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05315",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05370",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 17
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05374",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 17
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05513",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 23
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05562",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 165
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05570",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05770",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05916",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 24
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05974",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05978",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 17
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06411",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06431",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06438",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 66
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06439",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06531",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 19
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06533",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06534",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 32
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06611",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 19
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06635",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07211",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07232",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 28
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07317",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07333",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08115",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 37
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08118",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08125",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 16
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08127",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 15
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08215",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 20
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08216",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 15
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08221",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08237",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08315",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08337",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08435",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08436",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 12
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09179",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 24
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09182",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09183",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09184",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 23
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09186",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09261",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09272",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09274",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09372",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09377",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09461",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09475",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01004",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01054",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01056",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03101",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03159",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03256",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03356",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 13
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03357",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03401",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 16
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03405",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03453",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 25
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03454",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03457",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03462",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05111",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 145
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05117",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 12
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05334",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 34
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05711",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 33
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05913",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 54
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05914",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 21
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05962",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 25
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05970",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 16
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06412",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06413",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 21
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06414",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 18
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06433",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 39
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06434",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 15
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06436",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 31
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06440",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 20
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06633",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06634",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07131",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07137",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07143",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07312",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07315",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 23
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07320",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07331",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07334",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07336",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07338",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07339",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08111",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 41
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08116",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08117",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08136",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 19
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08211",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08222",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08226",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08231",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08326",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08335",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08417",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08426",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09162",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09163",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09175",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 16
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09262",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09275",
        "NeuerFall" : -1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09276",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 18
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09361",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09375",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09463",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09564",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 50
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09663",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09671",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09675",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09677",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09776",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09777",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "10046",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09561",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09563",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09572",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09575",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09679",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09762",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09764",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 13
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09778",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09779",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "10042",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11010",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 16
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12062",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12063",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12064",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12066",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12069",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 12
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12072",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "13075",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14522",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14523",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15001",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15082",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15084",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11001",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 116
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11003",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 31
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11005",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11007",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 50
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11008",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 64
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11009",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 17
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11012",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 52
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12052",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "13003",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "13071",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 15
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "13073",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "13074",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14612",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 46
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14626",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14729",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14730",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15002",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16054",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16061",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16063",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16065",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16067",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16068",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16070",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16071",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16075",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16077",
        "NeuerFall" : 1,
        "last_update" : "10.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    }
  ],
  "fields" : [
    {
      "domain" : null,
      "defaultValue" : null,
      "alias" : "AnzahlNeueFaelle",
      "name" : "AnzahlNeueFaelle",
      "type" : "esriFieldTypeDouble",
      "sqlType" : "sqlTypeFloat"
    },
    {
      "domain" : null,
      "defaultValue" : null,
      "alias" : "last_update",
      "name" : "last_update",
      "type" : "esriFieldTypeDouble",
      "sqlType" : "sqlTypeFloat"
    },
    {
      "sqlType" : "sqlTypeOther",
      "alias" : "Landkreis ID",
      "length" : 256,
      "domain" : null,
      "defaultValue" : null,
      "type" : "esriFieldTypeString",
      "name" : "IdLandkreis"
    },
    {
      "domain" : null,
      "defaultValue" : null,
      "alias" : "Neuer Fall",
      "name" : "NeuerFall",
      "type" : "esriFieldTypeInteger",
      "sqlType" : "sqlTypeOther"
    }
  ],
  "objectIdFieldName" : "ObjectId"
}
"""

// MARK: var jsonDummyDataNewestTimeStamp_20201010 -
var jsonDummyDataNewestTimeStamp_20201010: String = """
{
  "fields" : [
    {
      "domain" : null,
      "defaultValue" : null,
      "alias" : "last_update",
      "name" : "last_update",
      "type" : "esriFieldTypeDouble",
      "sqlType" : "sqlTypeFloat"
    }
  ],
  "objectIdFieldName" : "OBJECTID",
  "spatialReference" : {
    "latestWkid" : 4326,
    "wkid" : 4326
  },
  "globalIdFieldName" : "",
  "geometryType" : "esriGeometryPolygon",
  "features" : [
    {
      "attributes" : {
        "last_update" : "10.10.2020, 00:00 Uhr"
      }
    }
  ],
  "uniqueIdField" : {
    "name" : "OBJECTID",
    "isSystemMaintained" : true
  }
}
"""

#endif
