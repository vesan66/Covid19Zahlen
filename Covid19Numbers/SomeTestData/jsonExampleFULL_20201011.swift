//
//  jsonExampleFULL_20201011.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

#if DEBUG

// MARK: var jsonDummyDataBase_20201011 -
var jsonDummyDataBase_20201011:      String = """
{
  "uniqueIdField" : {
    "name" : "OBJECTID",
    "isSystemMaintained" : true
  },
  "geometryType" : "esriGeometryPolygon",
  "features" : [
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 3,
        "GEN" : "Flensburg",
        "cases7_per_100k" : 12.199991127279199,
        "RS" : "01001",
        "EWZ" : 90164,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 1,
        "county" : "SK Flensburg",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 136,
        "cases_per_100k" : 150.83625393726999,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 484,
        "cases_per_100k" : 196.11497848408001,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 1,
        "GEN" : "Lübeck",
        "cases7_per_100k" : 12.4694037777675,
        "RS" : "01003",
        "EWZ" : 216530,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 3,
        "county" : "SK Lübeck",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 9.9755598782981707,
        "RS" : "01004",
        "EWZ" : 80196,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 4,
        "county" : "SK Neumünster",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 178,
        "cases_per_100k" : 221.956207292134,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 7.8336376400262697,
        "RS" : "01054",
        "EWZ" : 165951,
        "BEZ" : "Kreis",
        "OBJECTID" : 7,
        "county" : "LK Nordfriesland",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 159,
        "cases_per_100k" : 79.2863233585487,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 47,
        "GEN" : "Pinneberg",
        "cases7_per_100k" : 12.021398088597699,
        "RS" : "01056",
        "EWZ" : 316103,
        "BEZ" : "Kreis",
        "OBJECTID" : 9,
        "county" : "LK Pinneberg",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 931,
        "cases_per_100k" : 294.52425317064399,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 9.1208253982152403,
        "RS" : "01058",
        "EWZ" : 274098,
        "BEZ" : "Kreis",
        "OBJECTID" : 11,
        "county" : "LK Rendsburg-Eckernförde",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 388,
        "cases_per_100k" : 141.55521018030001,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 4,
        "GEN" : "Schleswig-Flensburg",
        "cases7_per_100k" : 7.4568991230686601,
        "RS" : "01059",
        "EWZ" : 201156,
        "BEZ" : "Kreis",
        "OBJECTID" : 12,
        "county" : "LK Schleswig-Flensburg",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 212,
        "cases_per_100k" : 105.39084093936999,
        "BL" : "Schleswig-Holstein"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "1",
        "deaths" : 7,
        "GEN" : "Segeberg",
        "cases7_per_100k" : 21.286191034544999,
        "RS" : "01060",
        "EWZ" : 277175,
        "BEZ" : "Kreis",
        "OBJECTID" : 13,
        "county" : "LK Segeberg",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 539,
        "cases_per_100k" : 194.461982502029,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 30.207015498147801,
        "RS" : "02000",
        "EWZ" : 1847253,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 16,
        "county" : "SK Hamburg",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 8912,
        "cases_per_100k" : 482.44609698833898,
        "BL" : "Hamburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 18,
        "GEN" : "Braunschweig",
        "cases7_per_100k" : 20.047633176427201,
        "RS" : "03101",
        "EWZ" : 249406,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 17,
        "county" : "SK Braunschweig",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 543,
        "cases_per_100k" : 217.71729629599901,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 10,
        "GEN" : "Salzgitter",
        "cases7_per_100k" : 4.7942775503159396,
        "RS" : "03102",
        "EWZ" : 104291,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 18,
        "county" : "SK Salzgitter",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 275,
        "cases_per_100k" : 263.68526526737702,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 7.3644794162800302,
        "RS" : "03151",
        "EWZ" : 176523,
        "BEZ" : "Landkreis",
        "OBJECTID" : 20,
        "county" : "LK Gifhorn",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 269,
        "cases_per_100k" : 152.38807407533301,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 7.5594360660694697,
        "RS" : "03155",
        "EWZ" : 132285,
        "BEZ" : "Landkreis",
        "OBJECTID" : 23,
        "county" : "LK Northeim",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 194,
        "cases_per_100k" : 146.653059681748,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 12,
        "GEN" : "Peine",
        "cases7_per_100k" : 14.0948509284056,
        "RS" : "03157",
        "EWZ" : 134801,
        "BEZ" : "Landkreis",
        "OBJECTID" : 24,
        "county" : "LK Peine",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 3.3438665128488099,
        "RS" : "03158",
        "EWZ" : 119622,
        "BEZ" : "Landkreis",
        "OBJECTID" : 25,
        "county" : "LK Wolfenbüttel",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 9.2012967694246992,
        "RS" : "03159",
        "EWZ" : 326041,
        "BEZ" : "Landkreis",
        "OBJECTID" : 26,
        "county" : "LK Göttingen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1490,
        "cases_per_100k" : 456.99773954809399,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 133,
        "GEN" : "Region Hannover",
        "cases7_per_100k" : 22.383254905519301,
        "RS" : "03241",
        "EWZ" : 1157115,
        "BEZ" : "Landkreis",
        "OBJECTID" : 27,
        "county" : "Region Hannover",
        "IBZ" : 45,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 4748,
        "cases_per_100k" : 410.33086598998398,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 27,
        "GEN" : "Diepholz",
        "cases7_per_100k" : 8.7521707686709096,
        "RS" : "03251",
        "EWZ" : 217089,
        "BEZ" : "Landkreis",
        "OBJECTID" : 28,
        "county" : "LK Diepholz",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 13.777250858359,
        "RS" : "03254",
        "EWZ" : 275817,
        "BEZ" : "Landkreis",
        "OBJECTID" : 30,
        "county" : "LK Hildesheim",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 630,
        "cases_per_100k" : 228.41231686226701,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 9.0617019523848796,
        "RS" : "03256",
        "EWZ" : 121390,
        "BEZ" : "Landkreis",
        "OBJECTID" : 32,
        "county" : "LK Nienburg (Weser)",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 10.0552480015195,
        "RS" : "03351",
        "EWZ" : 179011,
        "BEZ" : "Landkreis",
        "OBJECTID" : 34,
        "county" : "LK Celle",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 12.577083767308199,
        "RS" : "03353",
        "EWZ" : 254431,
        "BEZ" : "Landkreis",
        "OBJECTID" : 36,
        "county" : "LK Harburg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 911,
        "cases_per_100k" : 358.05385350055599,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 16.6771996348571,
        "RS" : "03356",
        "EWZ" : 113928,
        "BEZ" : "Landkreis",
        "OBJECTID" : 39,
        "county" : "LK Osterholz",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 17.095895763881298,
        "RS" : "03357",
        "EWZ" : 163782,
        "BEZ" : "Landkreis",
        "OBJECTID" : 40,
        "county" : "LK Rotenburg (Wümme)",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 19.688915140775698,
        "RS" : "03361",
        "EWZ" : 137133,
        "BEZ" : "Landkreis",
        "OBJECTID" : 44,
        "county" : "LK Verden",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 403,
        "cases_per_100k" : 293.87528895306002,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 4,
        "GEN" : "Delmenhorst",
        "cases7_per_100k" : 64.467050890289997,
        "RS" : "03401",
        "EWZ" : 77559,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 45,
        "county" : "SK Delmenhorst",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 248,
        "cases_per_100k" : 319.75657241583798,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 4.7315720056542299,
        "RS" : "03403",
        "EWZ" : 169077,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 47,
        "county" : "SK Oldenburg",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 16.338781611003899,
        "RS" : "03404",
        "EWZ" : 165251,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 48,
        "county" : "SK Osnabrück",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 806,
        "cases_per_100k" : 487.742888091449,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 1,
        "GEN" : "Wilhelmshaven",
        "cases7_per_100k" : 2.6285008345490199,
        "RS" : "03405",
        "EWZ" : 76089,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 49,
        "county" : "SK Wilhelmshaven",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 15.287779265554001,
        "RS" : "03452",
        "EWZ" : 189694,
        "BEZ" : "Landkreis",
        "OBJECTID" : 51,
        "county" : "LK Aurich",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 84.953304976506004,
        "RS" : "03453",
        "EWZ" : 170682,
        "BEZ" : "Landkreis",
        "OBJECTID" : 52,
        "county" : "LK Cloppenburg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 858,
        "cases_per_100k" : 502.68921151615302,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 25,
        "GEN" : "Emsland",
        "cases7_per_100k" : 31.1970491261768,
        "RS" : "03454",
        "EWZ" : 326954,
        "BEZ" : "Landkreis",
        "OBJECTID" : 53,
        "county" : "LK Emsland",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 1.0131301669638499,
        "RS" : "03455",
        "EWZ" : 98704,
        "BEZ" : "Landkreis",
        "OBJECTID" : 54,
        "county" : "LK Friesland",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 51.763607996383797,
        "RS" : "03456",
        "EWZ" : 137162,
        "BEZ" : "Landkreis",
        "OBJECTID" : 55,
        "county" : "LK Grafschaft Bentheim",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 397,
        "cases_per_100k" : 289.43876583893501,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 6,
        "GEN" : "Leer",
        "cases7_per_100k" : 19.911452599030198,
        "RS" : "03457",
        "EWZ" : 170756,
        "BEZ" : "Landkreis",
        "OBJECTID" : 56,
        "county" : "LK Leer",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 288,
        "cases_per_100k" : 168.661716132962,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 14,
        "GEN" : "Oldenburg",
        "cases7_per_100k" : 38.964015585606198,
        "RS" : "03458",
        "EWZ" : 130890,
        "BEZ" : "Landkreis",
        "OBJECTID" : 57,
        "county" : "LK Oldenburg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 25.134048257372701,
        "RS" : "03459",
        "EWZ" : 358080,
        "BEZ" : "Landkreis",
        "OBJECTID" : 58,
        "county" : "LK Osnabrück",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1592,
        "cases_per_100k" : 444.59338695263602,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 14,
        "GEN" : "Vechta",
        "cases7_per_100k" : 41.312476367863098,
        "RS" : "03460",
        "EWZ" : 142814,
        "BEZ" : "Landkreis",
        "OBJECTID" : 59,
        "county" : "LK Vechta",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 796,
        "cases_per_100k" : 557.36832523422095,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 8,
        "GEN" : "Wesermarsch",
        "cases7_per_100k" : 50.799814862896902,
        "RS" : "03461",
        "EWZ" : 88583,
        "BEZ" : "Landkreis",
        "OBJECTID" : 60,
        "county" : "LK Wesermarsch",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 239,
        "cases_per_100k" : 269.803461160719,
        "BL" : "Niedersachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "3",
        "deaths" : 0,
        "GEN" : "Wittmund",
        "cases7_per_100k" : 5.2699996486666896,
        "RS" : "03462",
        "EWZ" : 56926,
        "BEZ" : "Landkreis",
        "OBJECTID" : 61,
        "county" : "LK Wittmund",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 77.348786645969895,
        "RS" : "04011",
        "EWZ" : 567559,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 62,
        "county" : "SK Bremen",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 2768,
        "cases_per_100k" : 487.70260008210602,
        "BL" : "Bremen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "4",
        "deaths" : 6,
        "GEN" : "Bremerhaven",
        "cases7_per_100k" : 11.4393319430145,
        "RS" : "04012",
        "EWZ" : 113643,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 63,
        "county" : "SK Bremerhaven",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 290,
        "cases_per_100k" : 255.185097190324,
        "BL" : "Bremen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 52,
        "GEN" : "Düsseldorf",
        "cases7_per_100k" : 45.346587830069303,
        "RS" : "05111",
        "EWZ" : 621877,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 64,
        "county" : "SK Düsseldorf",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 3599,
        "cases_per_100k" : 578.73180709368603,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 75,
        "GEN" : "Duisburg",
        "cases7_per_100k" : 44.918044621264698,
        "RS" : "05112",
        "EWZ" : 498686,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 65,
        "county" : "SK Duisburg",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 3207,
        "cases_per_100k" : 643.09004062676695,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 49,
        "GEN" : "Essen",
        "cases7_per_100k" : 57.313473814263197,
        "RS" : "05113",
        "EWZ" : 582760,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 66,
        "county" : "SK Essen",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 2482,
        "cases_per_100k" : 425.90431738623101,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 29.8811649057211,
        "RS" : "05116",
        "EWZ" : 261034,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 68,
        "county" : "SK Mönchengladbach",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1183,
        "cases_per_100k" : 453.19766773676997,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 15,
        "GEN" : "Mülheim an der Ruhr",
        "cases7_per_100k" : 13.479300482910601,
        "RS" : "05117",
        "EWZ" : 170632,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 69,
        "county" : "SK Mülheim a.d.Ruhr",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 44.010131311861201,
        "RS" : "05120",
        "EWZ" : 111338,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 71,
        "county" : "SK Remscheid",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 622,
        "cases_per_100k" : 558.65921787709499,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 13,
        "GEN" : "Solingen",
        "cases7_per_100k" : 51.492982511224803,
        "RS" : "05122",
        "EWZ" : 159245,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 72,
        "county" : "SK Solingen",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 770,
        "cases_per_100k" : 483.531665044428,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 88,
        "GEN" : "Wuppertal",
        "cases7_per_100k" : 60.546324978879198,
        "RS" : "05124",
        "EWZ" : 355100,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 73,
        "county" : "SK Wuppertal",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 2052,
        "cases_per_100k" : 577.86539003097698,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 37,
        "GEN" : "Kleve",
        "cases7_per_100k" : 24.642759989118801,
        "RS" : "05154",
        "EWZ" : 312465,
        "BEZ" : "Kreis",
        "OBJECTID" : 74,
        "county" : "LK Kleve",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1252,
        "cases_per_100k" : 400.68487670619101,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 88,
        "GEN" : "Mettmann",
        "cases7_per_100k" : 42.012480177935203,
        "RS" : "05158",
        "EWZ" : 485570,
        "BEZ" : "Kreis",
        "OBJECTID" : 75,
        "county" : "LK Mettmann",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 2283,
        "cases_per_100k" : 470.16907963836297,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 26,
        "GEN" : "Rhein-Kreis Neuss",
        "cases7_per_100k" : 23.243973169813799,
        "RS" : "05162",
        "EWZ" : 451730,
        "BEZ" : "Kreis",
        "OBJECTID" : 76,
        "county" : "LK Rhein-Kreis Neuss",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1557,
        "cases_per_100k" : 344.67491643238202,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 37,
        "GEN" : "Viersen",
        "cases7_per_100k" : 21.4144942666038,
        "RS" : "05166",
        "EWZ" : 298863,
        "BEZ" : "Kreis",
        "OBJECTID" : 77,
        "county" : "LK Viersen",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1110,
        "cases_per_100k" : 371.40763493640901,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 32,
        "GEN" : "Wesel",
        "cases7_per_100k" : 16.957406473381202,
        "RS" : "05170",
        "EWZ" : 459976,
        "BEZ" : "Kreis",
        "OBJECTID" : 78,
        "county" : "LK Wesel",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 35.1863816569752,
        "RS" : "05314",
        "EWZ" : 329673,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 79,
        "county" : "SK Bonn",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1421,
        "cases_per_100k" : 431.03317529794703,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 127,
        "GEN" : "Köln",
        "cases7_per_100k" : 59.658247407991603,
        "RS" : "05315",
        "EWZ" : 1087863,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 80,
        "county" : "SK Köln",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 5954,
        "cases_per_100k" : 547.31156404804699,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 9,
        "GEN" : "Leverkusen",
        "cases7_per_100k" : 37.867451703729898,
        "RS" : "05316",
        "EWZ" : 163729,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 81,
        "county" : "SK Leverkusen",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 27.826349218887401,
        "RS" : "05334",
        "EWZ" : 557026,
        "BEZ" : "Kreis",
        "OBJECTID" : 82,
        "county" : "StadtRegion Aachen",
        "IBZ" : 46,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 3029,
        "cases_per_100k" : 543.78072118716204,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 42,
        "GEN" : "Düren",
        "cases7_per_100k" : 29.852099849605899,
        "RS" : "05358",
        "EWZ" : 264638,
        "BEZ" : "Kreis",
        "OBJECTID" : 83,
        "county" : "LK Düren",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1118,
        "cases_per_100k" : 422.46389407416899,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 80,
        "GEN" : "Rhein-Erft-Kreis",
        "cases7_per_100k" : 41.860119205720203,
        "RS" : "05362",
        "EWZ" : 470615,
        "BEZ" : "Kreis",
        "OBJECTID" : 84,
        "county" : "LK Rhein-Erft-Kreis",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 2002,
        "cases_per_100k" : 425.400805329197,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 33.081302815218898,
        "RS" : "05374",
        "EWZ" : 272057,
        "BEZ" : "Kreis",
        "OBJECTID" : 87,
        "county" : "LK Oberbergischer Kreis",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 998,
        "cases_per_100k" : 366.83489121764899,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 27.797937293179999,
        "RS" : "05382",
        "EWZ" : 600764,
        "BEZ" : "Kreis",
        "OBJECTID" : 89,
        "county" : "LK Rhein-Sieg-Kreis",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 2394,
        "cases_per_100k" : 398.49258610702401,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 7,
        "GEN" : "Bottrop",
        "cases7_per_100k" : 17.011865776379,
        "RS" : "05512",
        "EWZ" : 117565,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 90,
        "county" : "SK Bottrop",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 45.8318088158832,
        "RS" : "05513",
        "EWZ" : 259645,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 91,
        "county" : "SK Gelsenkirchen",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 32.033695641831599,
        "RS" : "05515",
        "EWZ" : 315293,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 92,
        "county" : "SK Münster",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1209,
        "cases_per_100k" : 383.45285179182503,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 38,
        "GEN" : "Borken",
        "cases7_per_100k" : 13.7340812572878,
        "RS" : "05554",
        "EWZ" : 371339,
        "BEZ" : "Kreis",
        "OBJECTID" : 93,
        "county" : "LK Borken",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 56.827711080752302,
        "RS" : "05562",
        "EWZ" : 614137,
        "BEZ" : "Kreis",
        "OBJECTID" : 95,
        "county" : "LK Recklinghausen",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 2691,
        "cases_per_100k" : 438.17584675732002,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 94,
        "GEN" : "Steinfurt",
        "cases7_per_100k" : 23.4259961625987,
        "RS" : "05566",
        "EWZ" : 448220,
        "BEZ" : "Kreis",
        "OBJECTID" : 96,
        "county" : "LK Steinfurt",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1981,
        "cases_per_100k" : 441.97046093436302,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 21,
        "GEN" : "Warendorf",
        "cases7_per_100k" : 27.713792110567201,
        "RS" : "05570",
        "EWZ" : 277840,
        "BEZ" : "Kreis",
        "OBJECTID" : 97,
        "county" : "LK Warendorf",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1170,
        "cases_per_100k" : 421.10567232939798,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 9,
        "GEN" : "Bielefeld",
        "cases7_per_100k" : 24.237346459402399,
        "RS" : "05711",
        "EWZ" : 334195,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 98,
        "county" : "SK Bielefeld",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1062,
        "cases_per_100k" : 317.77854246772102,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 21,
        "GEN" : "Gütersloh",
        "cases7_per_100k" : 23.291627618938001,
        "RS" : "05754",
        "EWZ" : 364938,
        "BEZ" : "Kreis",
        "OBJECTID" : 99,
        "county" : "LK Gütersloh",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 24.742794658748998,
        "RS" : "05758",
        "EWZ" : 250578,
        "BEZ" : "Kreis",
        "OBJECTID" : 100,
        "county" : "LK Herford",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 8.5560887266400893,
        "RS" : "05762",
        "EWZ" : 140251,
        "BEZ" : "Kreis",
        "OBJECTID" : 101,
        "county" : "LK Höxter",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 457,
        "cases_per_100k" : 325.84437900620998,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 31,
        "GEN" : "Lippe",
        "cases7_per_100k" : 13.524634978734699,
        "RS" : "05766",
        "EWZ" : 347514,
        "BEZ" : "Kreis",
        "OBJECTID" : 102,
        "county" : "LK Lippe",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 14.497002342071299,
        "RS" : "05770",
        "EWZ" : 310409,
        "BEZ" : "Kreis",
        "OBJECTID" : 103,
        "county" : "LK Minden-Lübbecke",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1002,
        "cases_per_100k" : 322.799918816787,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 34,
        "GEN" : "Paderborn",
        "cases7_per_100k" : 8.1211282521058106,
        "RS" : "05774",
        "EWZ" : 307839,
        "BEZ" : "Kreis",
        "OBJECTID" : 104,
        "county" : "LK Paderborn",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 937,
        "cases_per_100k" : 304.37988688892602,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 28,
        "GEN" : "Bochum",
        "cases7_per_100k" : 35.559251286287498,
        "RS" : "05911",
        "EWZ" : 365587,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 105,
        "county" : "SK Bochum",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 36.209094772630699,
        "RS" : "05913",
        "EWZ" : 588250,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 106,
        "county" : "SK Dortmund",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 2364,
        "cases_per_100k" : 401.86995325116902,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 14,
        "GEN" : "Hagen",
        "cases7_per_100k" : 71.017457575018796,
        "RS" : "05914",
        "EWZ" : 188686,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 107,
        "county" : "SK Hagen",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 961,
        "cases_per_100k" : 509.31176663875402,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 38,
        "GEN" : "Hamm",
        "cases7_per_100k" : 58.916383201049399,
        "RS" : "05915",
        "EWZ" : 179916,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 108,
        "county" : "SK Hamm",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1274,
        "cases_per_100k" : 708.10822828431003,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 9,
        "GEN" : "Herne",
        "cases7_per_100k" : 86.290100927458795,
        "RS" : "05916",
        "EWZ" : 156449,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 109,
        "county" : "SK Herne",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 709,
        "cases_per_100k" : 453.18282635235801,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 15,
        "GEN" : "Ennepe-Ruhr-Kreis",
        "cases7_per_100k" : 10.798936150518699,
        "RS" : "05954",
        "EWZ" : 324106,
        "BEZ" : "Kreis",
        "OBJECTID" : 110,
        "county" : "LK Ennepe-Ruhr-Kreis",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 12.703203131917,
        "RS" : "05958",
        "EWZ" : 259777,
        "BEZ" : "Kreis",
        "OBJECTID" : 111,
        "county" : "LK Hochsauerlandkreis",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 933,
        "cases_per_100k" : 359.15419763874399,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 32,
        "GEN" : "Märkischer Kreis",
        "cases7_per_100k" : 26.083437748341101,
        "RS" : "05962",
        "EWZ" : 410222,
        "BEZ" : "Kreis",
        "OBJECTID" : 112,
        "county" : "LK Märkischer Kreis",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 33.593370908140798,
        "RS" : "05966",
        "EWZ" : 133955,
        "BEZ" : "Kreis",
        "OBJECTID" : 113,
        "county" : "LK Olpe",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 861,
        "cases_per_100k" : 642.75316337576101,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 8,
        "GEN" : "Siegen-Wittgenstein",
        "cases7_per_100k" : 30.3310416546305,
        "RS" : "05970",
        "EWZ" : 276944,
        "BEZ" : "Kreis",
        "OBJECTID" : 114,
        "county" : "LK Siegen-Wittgenstein",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 831,
        "cases_per_100k" : 300.06066208330901,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 10,
        "GEN" : "Soest",
        "cases7_per_100k" : 23.195321172357801,
        "RS" : "05974",
        "EWZ" : 301785,
        "BEZ" : "Kreis",
        "OBJECTID" : 115,
        "county" : "LK Soest",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 664,
        "cases_per_100k" : 220.024189406365,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "5",
        "deaths" : 42,
        "GEN" : "Unna",
        "cases7_per_100k" : 54.1921694847439,
        "RS" : "05978",
        "EWZ" : 394891,
        "BEZ" : "Kreis",
        "OBJECTID" : 116,
        "county" : "LK Unna",
        "IBZ" : 42,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1630,
        "cases_per_100k" : 412.77213205669398,
        "BL" : "Nordrhein-Westfalen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 18,
        "GEN" : "Darmstadt",
        "cases7_per_100k" : 34.4012309385907,
        "RS" : "06411",
        "EWZ" : 159878,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 117,
        "county" : "SK Darmstadt",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 516,
        "cases_per_100k" : 322.74609389659599,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 72,
        "GEN" : "Frankfurt am Main",
        "cases7_per_100k" : 63.664230134402302,
        "RS" : "06412",
        "EWZ" : 763380,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 118,
        "county" : "SK Frankfurt am Main",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 4185,
        "cases_per_100k" : 548.21975949068599,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 10,
        "GEN" : "Offenbach am Main",
        "cases7_per_100k" : 80.595640159656099,
        "RS" : "06413",
        "EWZ" : 130280,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 119,
        "county" : "SK Offenbach",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 721,
        "cases_per_100k" : 553.42339576297195,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 23,
        "GEN" : "Wiesbaden",
        "cases7_per_100k" : 37.346394995583097,
        "RS" : "06414",
        "EWZ" : 278474,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 120,
        "county" : "SK Wiesbaden",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1211,
        "cases_per_100k" : 434.87004172741399,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 3,
        "GEN" : "Bergstraße",
        "cases7_per_100k" : 18.125323666494001,
        "RS" : "06431",
        "EWZ" : 270340,
        "BEZ" : "Landkreis",
        "OBJECTID" : 121,
        "county" : "LK Bergstraße",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 21.1520124629,
        "RS" : "06432",
        "EWZ" : 297844,
        "BEZ" : "Landkreis",
        "OBJECTID" : 122,
        "county" : "LK Darmstadt-Dieburg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 810,
        "cases_per_100k" : 271.95444595157198,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 17,
        "GEN" : "Groß-Gerau",
        "cases7_per_100k" : 51.1377236822063,
        "RS" : "06433",
        "EWZ" : 275726,
        "BEZ" : "Landkreis",
        "OBJECTID" : 123,
        "county" : "LK Groß-Gerau",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1330,
        "cases_per_100k" : 482.36292551300897,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 6,
        "GEN" : "Hochtaunuskreis",
        "cases7_per_100k" : 30.3907747114987,
        "RS" : "06434",
        "EWZ" : 236914,
        "BEZ" : "Landkreis",
        "OBJECTID" : 124,
        "county" : "LK Hochtaunuskreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 608,
        "cases_per_100k" : 256.63320867487801,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 55,
        "GEN" : "Main-Kinzig-Kreis",
        "cases7_per_100k" : 29.2472750099869,
        "RS" : "06435",
        "EWZ" : 420552,
        "BEZ" : "Landkreis",
        "OBJECTID" : 125,
        "county" : "LK Main-Kinzig-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1562,
        "cases_per_100k" : 371.41661435446701,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 14.477317146314,
        "RS" : "06437",
        "EWZ" : 96703,
        "BEZ" : "Landkreis",
        "OBJECTID" : 127,
        "county" : "LK Odenwaldkreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 507,
        "cases_per_100k" : 524.28569951294196,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 46,
        "GEN" : "Offenbach",
        "cases7_per_100k" : 41.875929210006397,
        "RS" : "06438",
        "EWZ" : 355813,
        "BEZ" : "Landkreis",
        "OBJECTID" : 128,
        "county" : "LK Offenbach",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1507,
        "cases_per_100k" : 423.53708268107101,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 8,
        "GEN" : "Rheingau-Taunus-Kreis",
        "cases7_per_100k" : 29.920923274203901,
        "RS" : "06439",
        "EWZ" : 187160,
        "BEZ" : "Landkreis",
        "OBJECTID" : 129,
        "county" : "LK Rheingau-Taunus-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 586,
        "cases_per_100k" : 313.10108997649098,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 13,
        "GEN" : "Wetteraukreis",
        "cases7_per_100k" : 23.026603835389,
        "RS" : "06440",
        "EWZ" : 308339,
        "BEZ" : "Landkreis",
        "OBJECTID" : 130,
        "county" : "LK Wetteraukreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 711,
        "cases_per_100k" : 230.590356717768,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 6,
        "GEN" : "Gießen",
        "cases7_per_100k" : 22.535169641801598,
        "RS" : "06531",
        "EWZ" : 270688,
        "BEZ" : "Landkreis",
        "OBJECTID" : 131,
        "county" : "LK Gießen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 574,
        "cases_per_100k" : 212.052252039248,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 23,
        "GEN" : "Lahn-Dill-Kreis",
        "cases7_per_100k" : 18.9484405038706,
        "RS" : "06532",
        "EWZ" : 253319,
        "BEZ" : "Landkreis",
        "OBJECTID" : 132,
        "county" : "LK Lahn-Dill-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 606,
        "cases_per_100k" : 239.22406136136601,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 7,
        "GEN" : "Limburg-Weilburg",
        "cases7_per_100k" : 19.195867653217899,
        "RS" : "06533",
        "EWZ" : 171912,
        "BEZ" : "Landkreis",
        "OBJECTID" : 133,
        "county" : "LK Limburg-Weilburg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 536,
        "cases_per_100k" : 311.787426124994,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 4,
        "GEN" : "Marburg-Biedenkopf",
        "cases7_per_100k" : 34.401256252934203,
        "RS" : "06534",
        "EWZ" : 247084,
        "BEZ" : "Landkreis",
        "OBJECTID" : 134,
        "county" : "LK Marburg-Biedenkopf",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 27.703982942261899,
        "RS" : "06611",
        "EWZ" : 202137,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 136,
        "county" : "SK Kassel",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 654,
        "cases_per_100k" : 323.54294364713002,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 10.559037691540899,
        "RS" : "06633",
        "EWZ" : 236764,
        "BEZ" : "Landkreis",
        "OBJECTID" : 139,
        "county" : "LK Kassel",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 602,
        "cases_per_100k" : 254.261627612306,
        "BL" : "Hessen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "6",
        "deaths" : 39,
        "GEN" : "Schwalm-Eder-Kreis",
        "cases7_per_100k" : 14.470732942623499,
        "RS" : "06634",
        "EWZ" : 179673,
        "BEZ" : "Landkreis",
        "OBJECTID" : 140,
        "county" : "LK Schwalm-Eder-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 717,
        "cases_per_100k" : 399.05828922542599,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 39.749972671893801,
        "RS" : "06636",
        "EWZ" : 100629,
        "BEZ" : "Landkreis",
        "OBJECTID" : 142,
        "county" : "LK Werra-Meißner-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 305,
        "cases_per_100k" : 303.09354162318999,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 19.218055747736098,
        "RS" : "07131",
        "EWZ" : 130086,
        "BEZ" : "Landkreis",
        "OBJECTID" : 144,
        "county" : "LK Ahrweiler",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 392,
        "cases_per_100k" : 301.33911412450198,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 12,
        "GEN" : "Altenkirchen (Westerwald)",
        "cases7_per_100k" : 13.1982454097279,
        "RS" : "07132",
        "EWZ" : 128805,
        "BEZ" : "Landkreis",
        "OBJECTID" : 145,
        "county" : "LK Altenkirchen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 137,
        "cases_per_100k" : 169.23818112191299,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 1,
        "GEN" : "Cochem-Zell",
        "cases7_per_100k" : 0,
        "RS" : "07135",
        "EWZ" : 61375,
        "BEZ" : "Landkreis",
        "OBJECTID" : 148,
        "county" : "LK Cochem-Zell",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 49.778186214177502,
        "RS" : "07138",
        "EWZ" : 182811,
        "BEZ" : "Landkreis",
        "OBJECTID" : 150,
        "county" : "LK Neuwied",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 550,
        "cases_per_100k" : 300.85716942634701,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 6,
        "GEN" : "Rhein-Hunsrück-Kreis",
        "cases7_per_100k" : 8.7240580440661901,
        "RS" : "07140",
        "EWZ" : 103163,
        "BEZ" : "Landkreis",
        "OBJECTID" : 151,
        "county" : "LK Rhein-Hunsrück-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 238,
        "cases_per_100k" : 230.70286827641701,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 6,
        "GEN" : "Rhein-Lahn-Kreis",
        "cases7_per_100k" : 13.082904731923101,
        "RS" : "07141",
        "EWZ" : 122297,
        "BEZ" : "Landkreis",
        "OBJECTID" : 152,
        "county" : "LK Rhein-Lahn-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 228,
        "cases_per_100k" : 186.43139242990401,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 22,
        "GEN" : "Westerwaldkreis",
        "cases7_per_100k" : 12.382122196687501,
        "RS" : "07143",
        "EWZ" : 201904,
        "BEZ" : "Landkreis",
        "OBJECTID" : 153,
        "county" : "LK Westerwaldkreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 627,
        "cases_per_100k" : 310.543624692923,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 249,
        "cases_per_100k" : 223.2623197762,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 2,
        "GEN" : "Bernkastel-Wittlich",
        "cases7_per_100k" : 16.002418143186102,
        "RS" : "07231",
        "EWZ" : 112483,
        "BEZ" : "Landkreis",
        "OBJECTID" : 155,
        "county" : "LK Bernkastel-Wittlich",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 40.380383209836701,
        "RS" : "07232",
        "EWZ" : 99058,
        "BEZ" : "Landkreis",
        "OBJECTID" : 156,
        "county" : "LK Bitburg-Prüm",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 356,
        "cases_per_100k" : 359.38541056754599,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 5,
        "GEN" : "Vulkaneifel",
        "cases7_per_100k" : 11.5423935626422,
        "RS" : "07233",
        "EWZ" : 60646,
        "BEZ" : "Landkreis",
        "OBJECTID" : 157,
        "county" : "LK Vulkaneifel",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 154,
        "cases_per_100k" : 253.93265837812899,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 11,
        "GEN" : "Trier-Saarburg",
        "cases7_per_100k" : 10.0402950508039,
        "RS" : "07235",
        "EWZ" : 149398,
        "BEZ" : "Landkreis",
        "OBJECTID" : 158,
        "county" : "LK Trier-Saarburg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 14.3554407120299,
        "RS" : "07311",
        "EWZ" : 48762,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 159,
        "county" : "SK Frankenthal",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 22.993102069379201,
        "RS" : "07312",
        "EWZ" : 100030,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 160,
        "county" : "SK Kaiserslautern",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 333,
        "cases_per_100k" : 332.900129961012,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 15.094076735964,
        "RS" : "07314",
        "EWZ" : 172253,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 162,
        "county" : "SK Ludwigshafen",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 39.802724885395598,
        "RS" : "07315",
        "EWZ" : 218578,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 163,
        "county" : "SK Mainz",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1166,
        "cases_per_100k" : 533.44801398127902,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 3.9556179664168001,
        "RS" : "07318",
        "EWZ" : 50561,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 166,
        "county" : "SK Speyer",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 4.7880108209044598,
        "RS" : "07319",
        "EWZ" : 83542,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 167,
        "county" : "SK Worms",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 16.192833514538901,
        "RS" : "07331",
        "EWZ" : 129687,
        "BEZ" : "Landkreis",
        "OBJECTID" : 169,
        "county" : "LK Alzey-Worms",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 420,
        "cases_per_100k" : 323.856670290777,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 12,
        "GEN" : "Bad Dürkheim",
        "cases7_per_100k" : 13.5673960398278,
        "RS" : "07332",
        "EWZ" : 132671,
        "BEZ" : "Landkreis",
        "OBJECTID" : 170,
        "county" : "LK Bad Dürkheim",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 25.578817638532598,
        "RS" : "07334",
        "EWZ" : 129013,
        "BEZ" : "Landkreis",
        "OBJECTID" : 172,
        "county" : "LK Germersheim",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 416,
        "cases_per_100k" : 322.44812538271299,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "7",
        "deaths" : 1,
        "GEN" : "Kaiserslautern",
        "cases7_per_100k" : 61.3329055756329,
        "RS" : "07335",
        "EWZ" : 105979,
        "BEZ" : "Landkreis",
        "OBJECTID" : 173,
        "county" : "LK Kaiserslautern",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 286,
        "cases_per_100k" : 269.864784532785,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 10.3486860402693,
        "RS" : "07338",
        "EWZ" : 154609,
        "BEZ" : "Landkreis",
        "OBJECTID" : 176,
        "county" : "LK Rhein-Pfalz-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 24.595940723782899,
        "RS" : "07339",
        "EWZ" : 211417,
        "BEZ" : "Landkreis",
        "OBJECTID" : 177,
        "county" : "LK Mainz-Bingen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 696,
        "cases_per_100k" : 329.207206610632,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 149,
        "cases_per_100k" : 157.12161634908401,
        "BL" : "Rheinland-Pfalz"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 66,
        "GEN" : "Stuttgart",
        "cases7_per_100k" : 50.478761965117798,
        "RS" : "08111",
        "EWZ" : 635911,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 179,
        "county" : "SK Stuttgart",
        "IBZ" : 41,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 3277,
        "cases_per_100k" : 515.32368523268201,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 49,
        "GEN" : "Böblingen",
        "cases7_per_100k" : 35.640912712858999,
        "RS" : "08115",
        "EWZ" : 392807,
        "BEZ" : "Landkreis",
        "OBJECTID" : 180,
        "county" : "LK Böblingen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 2331,
        "cases_per_100k" : 593.42119666910196,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 121,
        "GEN" : "Esslingen",
        "cases7_per_100k" : 59.810401028738902,
        "RS" : "08116",
        "EWZ" : 535024,
        "BEZ" : "Landkreis",
        "OBJECTID" : 181,
        "county" : "LK Esslingen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 3182,
        "cases_per_100k" : 594.73967522952205,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 40,
        "GEN" : "Göppingen",
        "cases7_per_100k" : 32.539851633771697,
        "RS" : "08117",
        "EWZ" : 258145,
        "BEZ" : "Landkreis",
        "OBJECTID" : 182,
        "county" : "LK Göppingen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1282,
        "cases_per_100k" : 496.62011660113501,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 74,
        "GEN" : "Ludwigsburg",
        "cases7_per_100k" : 32.818564673657001,
        "RS" : "08118",
        "EWZ" : 545423,
        "BEZ" : "Landkreis",
        "OBJECTID" : 183,
        "county" : "LK Ludwigsburg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 16.852039096730699,
        "RS" : "08119",
        "EWZ" : 427248,
        "BEZ" : "Landkreis",
        "OBJECTID" : 184,
        "county" : "LK Rems-Murr-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 36.337209302325597,
        "RS" : "08121",
        "EWZ" : 126592,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 185,
        "county" : "SK Heilbronn",
        "IBZ" : 41,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 797,
        "cases_per_100k" : 629.58164812942402,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 44,
        "GEN" : "Heilbronn",
        "cases7_per_100k" : 17.999396149290501,
        "RS" : "08125",
        "EWZ" : 344456,
        "BEZ" : "Landkreis",
        "OBJECTID" : 186,
        "county" : "LK Heilbronn",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 19.528649416359698,
        "RS" : "08126",
        "EWZ" : 112655,
        "BEZ" : "Landkreis",
        "OBJECTID" : 187,
        "county" : "LK Hohenlohekreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 893,
        "cases_per_100k" : 792.68563312769095,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 60,
        "GEN" : "Schwäbisch Hall",
        "cases7_per_100k" : 43.70784860821,
        "RS" : "08127",
        "EWZ" : 196761,
        "BEZ" : "Landkreis",
        "OBJECTID" : 188,
        "county" : "LK Schwäbisch Hall",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1227,
        "cases_per_100k" : 623.59918886364699,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 11,
        "GEN" : "Main-Tauber-Kreis",
        "cases7_per_100k" : 26.435244979191701,
        "RS" : "08128",
        "EWZ" : 132399,
        "BEZ" : "Landkreis",
        "OBJECTID" : 189,
        "county" : "LK Main-Tauber-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 600,
        "cases_per_100k" : 453.175628214715,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 41,
        "GEN" : "Heidenheim",
        "cases7_per_100k" : 9.03770984432545,
        "RS" : "08135",
        "EWZ" : 132777,
        "BEZ" : "Landkreis",
        "OBJECTID" : 190,
        "county" : "LK Heidenheim",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 641,
        "cases_per_100k" : 482.76433418438398,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 44,
        "GEN" : "Ostalbkreis",
        "cases7_per_100k" : 15.2854072128015,
        "RS" : "08136",
        "EWZ" : 314025,
        "BEZ" : "Landkreis",
        "OBJECTID" : 191,
        "county" : "LK Ostalbkreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1953,
        "cases_per_100k" : 621.925005970862,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 19,
        "GEN" : "Baden-Baden",
        "cases7_per_100k" : 30.805472501585601,
        "RS" : "08211",
        "EWZ" : 55185,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 192,
        "county" : "SK Baden-Baden",
        "IBZ" : 41,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 248,
        "cases_per_100k" : 449.39748119960097,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 14,
        "GEN" : "Karlsruhe",
        "cases7_per_100k" : 14.420303787733101,
        "RS" : "08212",
        "EWZ" : 312060,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 193,
        "county" : "SK Karlsruhe",
        "IBZ" : 41,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 18.422784940945998,
        "RS" : "08215",
        "EWZ" : 445101,
        "BEZ" : "Landkreis",
        "OBJECTID" : 194,
        "county" : "LK Karlsruhe",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 17.716705556995901,
        "RS" : "08216",
        "EWZ" : 231420,
        "BEZ" : "Landkreis",
        "OBJECTID" : 195,
        "county" : "LK Rastatt",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 788,
        "cases_per_100k" : 340.50643851006799,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 575,
        "cases_per_100k" : 356.07022324054901,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 13,
        "GEN" : "Mannheim",
        "cases7_per_100k" : 35.7306105105936,
        "RS" : "08222",
        "EWZ" : 310658,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 197,
        "county" : "SK Mannheim",
        "IBZ" : 41,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1287,
        "cases_per_100k" : 414.28194348769398,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 23,
        "GEN" : "Neckar-Odenwald-Kreis",
        "cases7_per_100k" : 25.760096913661901,
        "RS" : "08225",
        "EWZ" : 143633,
        "BEZ" : "Landkreis",
        "OBJECTID" : 198,
        "county" : "LK Neckar-Odenwald-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 582,
        "cases_per_100k" : 405.19936226354702,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 40,
        "GEN" : "Rhein-Neckar-Kreis",
        "cases7_per_100k" : 21.1541793181424,
        "RS" : "08226",
        "EWZ" : 548355,
        "BEZ" : "Landkreis",
        "OBJECTID" : 199,
        "county" : "LK Rhein-Neckar-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1795,
        "cases_per_100k" : 327.34268858677302,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 9,
        "GEN" : "Pforzheim",
        "cases7_per_100k" : 34.138634613399802,
        "RS" : "08231",
        "EWZ" : 125957,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 200,
        "county" : "SK Pforzheim",
        "IBZ" : 41,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 676,
        "cases_per_100k" : 536.69109299205297,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 25.556735953817501,
        "RS" : "08236",
        "EWZ" : 199556,
        "BEZ" : "Landkreis",
        "OBJECTID" : 202,
        "county" : "LK Enzkreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 961,
        "cases_per_100k" : 481.56908336507001,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 39,
        "GEN" : "Freudenstadt",
        "cases7_per_100k" : 10.148592305675599,
        "RS" : "08237",
        "EWZ" : 118243,
        "BEZ" : "Landkreis",
        "OBJECTID" : 203,
        "county" : "LK Freudenstadt",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 678,
        "cases_per_100k" : 573.39546527067102,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 80,
        "GEN" : "Freiburg im Breisgau",
        "cases7_per_100k" : 25.952118341659599,
        "RS" : "08311",
        "EWZ" : 231195,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 204,
        "county" : "SK Freiburg i.Breisgau",
        "IBZ" : 41,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1355,
        "cases_per_100k" : 586.08533921581397,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 72,
        "GEN" : "Breisgau-Hochschwarzwald",
        "cases7_per_100k" : 15.9331717254487,
        "RS" : "08315",
        "EWZ" : 263601,
        "BEZ" : "Landkreis",
        "OBJECTID" : 205,
        "county" : "LK Breisgau-Hochschwarzwald",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1574,
        "cases_per_100k" : 597.11457847276802,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 746,
        "cases_per_100k" : 448.295755011778,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 126,
        "GEN" : "Ortenaukreis",
        "cases7_per_100k" : 34.574535970279797,
        "RS" : "08317",
        "EWZ" : 430953,
        "BEZ" : "Landkreis",
        "OBJECTID" : 207,
        "county" : "LK Ortenaukreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1778,
        "cases_per_100k" : 412.57399298763403,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 26,
        "GEN" : "Rottweil",
        "cases7_per_100k" : 10.008721886215101,
        "RS" : "08325",
        "EWZ" : 139878,
        "BEZ" : "Landkreis",
        "OBJECTID" : 208,
        "county" : "LK Rottweil",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 795,
        "cases_per_100k" : 568.35242139578804,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 35,
        "GEN" : "Schwarzwald-Baar-Kreis",
        "cases7_per_100k" : 13.6466735056893,
        "RS" : "08326",
        "EWZ" : 212506,
        "BEZ" : "Landkreis",
        "OBJECTID" : 209,
        "county" : "LK Schwarzwald-Baar-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 36.9407385306111,
        "RS" : "08327",
        "EWZ" : 140766,
        "BEZ" : "Landkreis",
        "OBJECTID" : 210,
        "county" : "LK Tuttlingen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 675,
        "cases_per_100k" : 479.51920208004799,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 17,
        "GEN" : "Konstanz",
        "cases7_per_100k" : 15.7175040603552,
        "RS" : "08335",
        "EWZ" : 286305,
        "BEZ" : "Landkreis",
        "OBJECTID" : 211,
        "county" : "LK Konstanz",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 819,
        "cases_per_100k" : 286.058573898465,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 65,
        "GEN" : "Lörrach",
        "cases7_per_100k" : 8.7437045327364302,
        "RS" : "08336",
        "EWZ" : 228736,
        "BEZ" : "Landkreis",
        "OBJECTID" : 212,
        "county" : "LK Lörrach",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 931,
        "cases_per_100k" : 407.019445998881,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 35,
        "GEN" : "Waldshut",
        "cases7_per_100k" : 7.6022058092548104,
        "RS" : "08337",
        "EWZ" : 171003,
        "BEZ" : "Landkreis",
        "OBJECTID" : 213,
        "county" : "LK Waldshut",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 463,
        "cases_per_100k" : 270.75548382192102,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 82,
        "GEN" : "Reutlingen",
        "cases7_per_100k" : 22.297010110300501,
        "RS" : "08415",
        "EWZ" : 287034,
        "BEZ" : "Landkreis",
        "OBJECTID" : 214,
        "county" : "LK Reutlingen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 2049,
        "cases_per_100k" : 713.85271431259002,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 60,
        "GEN" : "Tübingen",
        "cases7_per_100k" : 27.112358862680299,
        "RS" : "08416",
        "EWZ" : 228678,
        "BEZ" : "Landkreis",
        "OBJECTID" : 215,
        "county" : "LK Tübingen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1629,
        "cases_per_100k" : 712.35536431138996,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 78,
        "GEN" : "Zollernalbkreis",
        "cases7_per_100k" : 8.4493802907642994,
        "RS" : "08417",
        "EWZ" : 189363,
        "BEZ" : "Landkreis",
        "OBJECTID" : 216,
        "county" : "LK Zollernalbkreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1441,
        "cases_per_100k" : 760.97231243696001,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 10,
        "GEN" : "Ulm",
        "cases7_per_100k" : 36.2804637589715,
        "RS" : "08421",
        "EWZ" : 126790,
        "BEZ" : "Stadtkreis",
        "OBJECTID" : 217,
        "county" : "SK Ulm",
        "IBZ" : 41,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 654,
        "cases_per_100k" : 515.81354996450796,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 26,
        "GEN" : "Alb-Donau-Kreis",
        "cases7_per_100k" : 20.804156772006699,
        "RS" : "08425",
        "EWZ" : 197076,
        "BEZ" : "Landkreis",
        "OBJECTID" : 218,
        "county" : "LK Alb-Donau-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 971,
        "cases_per_100k" : 492.70332257606202,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 36,
        "GEN" : "Biberach",
        "cases7_per_100k" : 21.859878180860701,
        "RS" : "08426",
        "EWZ" : 201282,
        "BEZ" : "Landkreis",
        "OBJECTID" : 219,
        "county" : "LK Biberach",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 917,
        "cases_per_100k" : 455.57973390566502,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "8",
        "deaths" : 8,
        "GEN" : "Bodenseekreis",
        "cases7_per_100k" : 6.8975031038764003,
        "RS" : "08435",
        "EWZ" : 217470,
        "BEZ" : "Landkreis",
        "OBJECTID" : 220,
        "county" : "LK Bodenseekreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 17.167442121195101,
        "RS" : "08436",
        "EWZ" : 285424,
        "BEZ" : "Landkreis",
        "OBJECTID" : 221,
        "county" : "LK Ravensburg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 950,
        "cases_per_100k" : 332.83816357419101,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 918,
        "cases_per_100k" : 701.572041054956,
        "BL" : "Baden-Württemberg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 39,
        "GEN" : "Ingolstadt",
        "cases7_per_100k" : 32.752998718993801,
        "RS" : "09161",
        "EWZ" : 137392,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 223,
        "county" : "SK Ingolstadt",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 860,
        "cases_per_100k" : 625.94619774077103,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 229,
        "GEN" : "München",
        "cases7_per_100k" : 48.577507738039898,
        "RS" : "09162",
        "EWZ" : 1484226,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 224,
        "county" : "SK München",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 12539,
        "cases_per_100k" : 844.81743346363703,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 23,
        "GEN" : "Rosenheim",
        "cases7_per_100k" : 70.809271293921398,
        "RS" : "09163",
        "EWZ" : 63551,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 225,
        "county" : "SK Rosenheim",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 774,
        "cases_per_100k" : 1217.9194662554501,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 20.6586227154468,
        "RS" : "09174",
        "EWZ" : 154899,
        "BEZ" : "Landkreis",
        "OBJECTID" : 229,
        "county" : "LK Dachau",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 43.160759907830901,
        "RS" : "09175",
        "EWZ" : 143649,
        "BEZ" : "Landkreis",
        "OBJECTID" : 230,
        "county" : "LK Ebersberg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 845,
        "cases_per_100k" : 588.23938906640501,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 20,
        "GEN" : "Eichstätt",
        "cases7_per_100k" : 5.2678712532265699,
        "RS" : "09176",
        "EWZ" : 132881,
        "BEZ" : "Landkreis",
        "OBJECTID" : 231,
        "county" : "LK Eichstätt",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 440,
        "cases_per_100k" : 331.12333591709898,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 64.292260762114097,
        "RS" : "09179",
        "EWZ" : 219311,
        "BEZ" : "Landkreis",
        "OBJECTID" : 234,
        "county" : "LK Fürstenfeldbruck",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1503,
        "cases_per_100k" : 685.32814131530097,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 20,
        "GEN" : "Garmisch-Partenkirchen",
        "cases7_per_100k" : 3.3927440513887599,
        "RS" : "09180",
        "EWZ" : 88424,
        "BEZ" : "Landkreis",
        "OBJECTID" : 235,
        "county" : "LK Garmisch-Partenkirchen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 28.997100289971002,
        "RS" : "09182",
        "EWZ" : 100010,
        "BEZ" : "Landkreis",
        "OBJECTID" : 237,
        "county" : "LK Miesbach",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 14.6713615023474,
        "RS" : "09183",
        "EWZ" : 115872,
        "BEZ" : "Landkreis",
        "OBJECTID" : 238,
        "county" : "LK Mühldorf a.Inn",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 681,
        "cases_per_100k" : 587.717481358741,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 96,
        "GEN" : "München",
        "cases7_per_100k" : 35.666085547246098,
        "RS" : "09184",
        "EWZ" : 350473,
        "BEZ" : "Landkreis",
        "OBJECTID" : 239,
        "county" : "LK München",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 2258,
        "cases_per_100k" : 644.272169325454,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 18,
        "GEN" : "Neuburg-Schrobenhausen",
        "cases7_per_100k" : 21.5820683843253,
        "RS" : "09185",
        "EWZ" : 97303,
        "BEZ" : "Landkreis",
        "OBJECTID" : 240,
        "county" : "LK Neuburg-Schrobenhausen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 465,
        "cases_per_100k" : 477.88865708148802,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 22,
        "GEN" : "Pfaffenhofen a.d. Ilm",
        "cases7_per_100k" : 16.377206048648102,
        "RS" : "09186",
        "EWZ" : 128227,
        "BEZ" : "Landkreis",
        "OBJECTID" : 241,
        "county" : "LK Pfaffenhofen a.d.Ilm",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 540,
        "cases_per_100k" : 421.12815553666502,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 199,
        "GEN" : "Rosenheim",
        "cases7_per_100k" : 38.648452148624301,
        "RS" : "09187",
        "EWZ" : 261330,
        "BEZ" : "Landkreis",
        "OBJECTID" : 242,
        "county" : "LK Rosenheim",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 2736,
        "cases_per_100k" : 1046.95212949145,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 13,
        "GEN" : "Starnberg",
        "cases7_per_100k" : 31.463337894297801,
        "RS" : "09188",
        "EWZ" : 136667,
        "BEZ" : "Landkreis",
        "OBJECTID" : 243,
        "county" : "LK Starnberg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 841,
        "cases_per_100k" : 615.36435276987095,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 88,
        "GEN" : "Traunstein",
        "cases7_per_100k" : 28.761723221989701,
        "RS" : "09189",
        "EWZ" : 177319,
        "BEZ" : "Landkreis",
        "OBJECTID" : 244,
        "county" : "LK Traunstein",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1506,
        "cases_per_100k" : 849.31676808463806,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 3,
        "GEN" : "Weilheim-Schongau",
        "cases7_per_100k" : 11.071908354123901,
        "RS" : "09190",
        "EWZ" : 135478,
        "BEZ" : "Landkreis",
        "OBJECTID" : 245,
        "county" : "LK Weilheim-Schongau",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 496,
        "cases_per_100k" : 366.11110290969799,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 9,
        "GEN" : "Landshut",
        "cases7_per_100k" : 5.4487747067878098,
        "RS" : "09261",
        "EWZ" : 73411,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 246,
        "county" : "SK Landshut",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 7.5753271594417004,
        "RS" : "09262",
        "EWZ" : 52803,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 247,
        "county" : "SK Passau",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 8.3697767362055604,
        "RS" : "09263",
        "EWZ" : 47791,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 248,
        "county" : "SK Straubing",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 507,
        "cases_per_100k" : 1060.8692013140501,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 19,
        "GEN" : "Deggendorf",
        "cases7_per_100k" : 24.272250958335398,
        "RS" : "09271",
        "EWZ" : 119478,
        "BEZ" : "Landkreis",
        "OBJECTID" : 249,
        "county" : "LK Deggendorf",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 505,
        "cases_per_100k" : 422.67195634342698,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 14.014616726185499,
        "RS" : "09275",
        "EWZ" : 192656,
        "BEZ" : "Landkreis",
        "OBJECTID" : 253,
        "county" : "LK Passau",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 60.715669810102099,
        "RS" : "09276",
        "EWZ" : 77410,
        "BEZ" : "Landkreis",
        "OBJECTID" : 254,
        "county" : "LK Regen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 292,
        "cases_per_100k" : 377.212246479783,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 8.9003164556961991,
        "RS" : "09278",
        "EWZ" : 101120,
        "BEZ" : "Landkreis",
        "OBJECTID" : 256,
        "county" : "LK Straubing-Bogen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 642,
        "cases_per_100k" : 634.88924050632897,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 10,
        "GEN" : "Dingolfing-Landau",
        "cases7_per_100k" : 24.823391909642901,
        "RS" : "09279",
        "EWZ" : 96683,
        "BEZ" : "Landkreis",
        "OBJECTID" : 257,
        "county" : "LK Dingolfing-Landau",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1015,
        "cases_per_100k" : 1049.8226161786499,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 150,
        "cases_per_100k" : 355.391285805672,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 10,
        "GEN" : "Regensburg",
        "cases7_per_100k" : 28.087318902112401,
        "RS" : "09362",
        "EWZ" : 153094,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 259,
        "county" : "SK Regensburg",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 984,
        "cases_per_100k" : 642.74236743438701,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 20,
        "GEN" : "Weiden i.d. OPf.",
        "cases7_per_100k" : 25.735208104251001,
        "RS" : "09363",
        "EWZ" : 42743,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 260,
        "county" : "SK Weiden i.d.OPf.",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 412,
        "cases_per_100k" : 963.90052172285505,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 560,
        "cases_per_100k" : 543.43079505866103,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 21,
        "GEN" : "Cham",
        "cases7_per_100k" : 26.562915045547602,
        "RS" : "09372",
        "EWZ" : 127998,
        "BEZ" : "Landkreis",
        "OBJECTID" : 262,
        "county" : "LK Cham",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 553,
        "cases_per_100k" : 432.03800059375902,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 33.880359978824799,
        "RS" : "09374",
        "EWZ" : 94450,
        "BEZ" : "Landkreis",
        "OBJECTID" : 264,
        "county" : "LK Neustadt a.d.Waldnaab",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 949,
        "cases_per_100k" : 1004.76442562202,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 16,
        "GEN" : "Regensburg",
        "cases7_per_100k" : 17.004173751739099,
        "RS" : "09375",
        "EWZ" : 194070,
        "BEZ" : "Landkreis",
        "OBJECTID" : 265,
        "county" : "LK Regensburg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 793,
        "cases_per_100k" : 408.61544803421401,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 20,
        "GEN" : "Schwandorf",
        "cases7_per_100k" : 14.877732092620599,
        "RS" : "09376",
        "EWZ" : 147872,
        "BEZ" : "Landkreis",
        "OBJECTID" : 266,
        "county" : "LK Schwandorf",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 623,
        "cases_per_100k" : 421.31032244103,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 140,
        "GEN" : "Tirschenreuth",
        "cases7_per_100k" : 38.864059073369802,
        "RS" : "09377",
        "EWZ" : 72046,
        "BEZ" : "Landkreis",
        "OBJECTID" : 267,
        "county" : "LK Tirschenreuth",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1253,
        "cases_per_100k" : 1739.1666435333,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 22,
        "GEN" : "Bamberg",
        "cases7_per_100k" : 29.7261318547814,
        "RS" : "09461",
        "EWZ" : 77373,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 268,
        "county" : "SK Bamberg",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 282,
        "cases_per_100k" : 364.46822534992799,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 11,
        "GEN" : "Bayreuth",
        "cases7_per_100k" : 16.0464276640413,
        "RS" : "09462",
        "EWZ" : 74783,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 269,
        "county" : "SK Bayreuth",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 294,
        "cases_per_100k" : 393.13747776901198,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 21.744596128102899,
        "RS" : "09471",
        "EWZ" : 147163,
        "BEZ" : "Landkreis",
        "OBJECTID" : 272,
        "county" : "LK Bamberg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 550,
        "cases_per_100k" : 373.73524595176798,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 28,
        "GEN" : "Bayreuth",
        "cases7_per_100k" : 6.7525852755054796,
        "RS" : "09472",
        "EWZ" : 103664,
        "BEZ" : "Landkreis",
        "OBJECTID" : 273,
        "county" : "LK Bayreuth",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 463,
        "cases_per_100k" : 446.63528322271998,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 30,
        "GEN" : "Coburg",
        "cases7_per_100k" : 8.0694433236884304,
        "RS" : "09473",
        "EWZ" : 86747,
        "BEZ" : "Landkreis",
        "OBJECTID" : 274,
        "county" : "LK Coburg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 13.7690076848274,
        "RS" : "09474",
        "EWZ" : 116203,
        "BEZ" : "Landkreis",
        "OBJECTID" : 275,
        "county" : "LK Forchheim",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 320,
        "cases_per_100k" : 275.38015369654801,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 32,
        "GEN" : "Hof",
        "cases7_per_100k" : 3.1645235809748802,
        "RS" : "09475",
        "EWZ" : 94801,
        "BEZ" : "Landkreis",
        "OBJECTID" : 276,
        "county" : "LK Hof",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 6.9865578626722202,
        "RS" : "09477",
        "EWZ" : 71566,
        "BEZ" : "Landkreis",
        "OBJECTID" : 278,
        "county" : "LK Kulmbach",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 25.458248472505101,
        "RS" : "09478",
        "EWZ" : 66776,
        "BEZ" : "Landkreis",
        "OBJECTID" : 279,
        "county" : "LK Lichtenfels",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 395,
        "cases_per_100k" : 591.52989097879504,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 43,
        "GEN" : "Wunsiedel i. Fichtelgebirge",
        "cases7_per_100k" : 24.774619778404801,
        "RS" : "09479",
        "EWZ" : 72655,
        "BEZ" : "Landkreis",
        "OBJECTID" : 280,
        "county" : "LK Wunsiedel i.Fichtelgebirge",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 795,
        "cases_per_100k" : 1094.2123735462101,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 8,
        "GEN" : "Ansbach",
        "cases7_per_100k" : 2.39245896932868,
        "RS" : "09561",
        "EWZ" : 41798,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 281,
        "county" : "SK Ansbach",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 10.6640125124413,
        "RS" : "09562",
        "EWZ" : 112528,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 282,
        "county" : "SK Erlangen",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 416,
        "cases_per_100k" : 369.68576709796702,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 642,
        "cases_per_100k" : 499.62255928154002,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 16.756276318281799,
        "RS" : "09572",
        "EWZ" : 137262,
        "BEZ" : "Landkreis",
        "OBJECTID" : 287,
        "county" : "LK Erlangen-Höchstadt",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 13.576234800980901,
        "RS" : "09573",
        "EWZ" : 117853,
        "BEZ" : "Landkreis",
        "OBJECTID" : 288,
        "county" : "LK Fürth",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 625,
        "cases_per_100k" : 530.32167191331598,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 44,
        "GEN" : "Nürnberger Land",
        "cases7_per_100k" : 7.6115977329148903,
        "RS" : "09574",
        "EWZ" : 170792,
        "BEZ" : "Landkreis",
        "OBJECTID" : 289,
        "county" : "LK Nürnberger Land",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 9.4675303158210298,
        "RS" : "09576",
        "EWZ" : 126749,
        "BEZ" : "Landkreis",
        "OBJECTID" : 291,
        "county" : "LK Roth",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 5.2779361158612499,
        "RS" : "09577",
        "EWZ" : 94734,
        "BEZ" : "Landkreis",
        "OBJECTID" : 292,
        "county" : "LK Weißenburg-Gunzenhausen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 462,
        "cases_per_100k" : 487.68129710557997,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 1,
        "GEN" : "Aschaffenburg",
        "cases7_per_100k" : 22.534576490803101,
        "RS" : "09661",
        "EWZ" : 71002,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 293,
        "county" : "SK Aschaffenburg",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 207,
        "cases_per_100k" : 291.54108334976502,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 28.921162474400901,
        "RS" : "09663",
        "EWZ" : 127934,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 295,
        "county" : "SK Würzburg",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 853,
        "cases_per_100k" : 666.750042990917,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 42,
        "GEN" : "Aschaffenburg",
        "cases7_per_100k" : 15.499425947187101,
        "RS" : "09671",
        "EWZ" : 174200,
        "BEZ" : "Landkreis",
        "OBJECTID" : 296,
        "county" : "LK Aschaffenburg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 741,
        "cases_per_100k" : 425.37313432835799,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 15.068751177246201,
        "RS" : "09673",
        "EWZ" : 79635,
        "BEZ" : "Landkreis",
        "OBJECTID" : 298,
        "county" : "LK Rhön-Grabfeld",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 247,
        "cases_per_100k" : 292.70951839211199,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 15.534825194379501,
        "RS" : "09676",
        "EWZ" : 128743,
        "BEZ" : "Landkreis",
        "OBJECTID" : 301,
        "county" : "LK Miltenberg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 14.2678228887585,
        "RS" : "09677",
        "EWZ" : 126158,
        "BEZ" : "Landkreis",
        "OBJECTID" : 302,
        "county" : "LK Main-Spessart",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 17.8679252258136,
        "RS" : "09679",
        "EWZ" : 162302,
        "BEZ" : "Landkreis",
        "OBJECTID" : 304,
        "county" : "LK Würzburg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 689,
        "cases_per_100k" : 424.51725795122701,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 16,
        "GEN" : "Augsburg",
        "cases7_per_100k" : 18.881793230877101,
        "RS" : "09761",
        "EWZ" : 296582,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 305,
        "county" : "SK Augsburg",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 24.7758908058922,
        "RS" : "09762",
        "EWZ" : 44398,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 306,
        "county" : "SK Kaufbeuren",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 212,
        "cases_per_100k" : 477.498986440831,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 56.689342403628103,
        "RS" : "09764",
        "EWZ" : 44100,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 308,
        "county" : "SK Memmingen",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 179,
        "cases_per_100k" : 405.89569160997701,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 36.528846373370499,
        "RS" : "09775",
        "EWZ" : 175204,
        "BEZ" : "Landkreis",
        "OBJECTID" : 313,
        "county" : "LK Neu-Ulm",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 888,
        "cases_per_100k" : 506.83774343051499,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 8,
        "GEN" : "Lindau (Bodensee)",
        "cases7_per_100k" : 20.736512118661601,
        "RS" : "09776",
        "EWZ" : 81981,
        "BEZ" : "Landkreis",
        "OBJECTID" : 314,
        "county" : "LK Lindau",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 19.124250966837099,
        "RS" : "09777",
        "EWZ" : 141182,
        "BEZ" : "Landkreis",
        "OBJECTID" : 315,
        "county" : "LK Ostallgäu",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 734,
        "cases_per_100k" : 519.89630406142396,
        "BL" : "Bayern"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "9",
        "deaths" : 17,
        "GEN" : "Unterallgäu",
        "cases7_per_100k" : 34.401854948018801,
        "RS" : "09778",
        "EWZ" : 145341,
        "BEZ" : "Landkreis",
        "OBJECTID" : 316,
        "county" : "LK Unterallgäu",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 15.210791143669001,
        "RS" : "10041",
        "EWZ" : 328714,
        "BEZ" : "Landkreis",
        "OBJECTID" : 319,
        "county" : "LK Stadtverband Saarbrücken",
        "IBZ" : 45,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1454,
        "cases_per_100k" : 442.32980645789303,
        "BL" : "Saarland"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "10",
        "deaths" : 3,
        "GEN" : "Merzig-Wadern",
        "cases7_per_100k" : 39.712135447439501,
        "RS" : "10042",
        "EWZ" : 103243,
        "BEZ" : "Landkreis",
        "OBJECTID" : 320,
        "county" : "LK Merzig-Wadern",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 341,
        "cases_per_100k" : 330.288736282363,
        "BL" : "Saarland"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "10",
        "deaths" : 12,
        "GEN" : "Neunkirchen",
        "cases7_per_100k" : 13.697796176792901,
        "RS" : "10043",
        "EWZ" : 131408,
        "BEZ" : "Landkreis",
        "OBJECTID" : 321,
        "county" : "LK Neunkirchen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 19.555473216721001,
        "RS" : "10044",
        "EWZ" : 194319,
        "BEZ" : "Landkreis",
        "OBJECTID" : 322,
        "county" : "LK Saarlouis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 769,
        "cases_per_100k" : 395.74102378048502,
        "BL" : "Saarland"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "10",
        "deaths" : 18,
        "GEN" : "Saarpfalz-Kreis",
        "cases7_per_100k" : 32.349714478606998,
        "RS" : "10045",
        "EWZ" : 142196,
        "BEZ" : "Landkreis",
        "OBJECTID" : 323,
        "county" : "LK Saar-Pfalz-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 493,
        "cases_per_100k" : 346.70454865115801,
        "BL" : "Saarland"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "10",
        "deaths" : 6,
        "GEN" : "St. Wendel",
        "cases7_per_100k" : 48.271978116703302,
        "RS" : "10046",
        "EWZ" : 87007,
        "BEZ" : "Landkreis",
        "OBJECTID" : 324,
        "county" : "LK Sankt Wendel",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 243,
        "cases_per_100k" : 279.28787338949701,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 25.080760047352499,
        "RS" : "12052",
        "EWZ" : 99678,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 327,
        "county" : "SK Cottbus",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 82,
        "cases_per_100k" : 82.2648929553161,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 84,
        "cases_per_100k" : 145.45202680473099,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 51,
        "GEN" : "Potsdam",
        "cases7_per_100k" : 13.308638415384801,
        "RS" : "12054",
        "EWZ" : 180334,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 329,
        "county" : "SK Potsdam",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 762,
        "cases_per_100k" : 422.54926968846701,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 29,
        "GEN" : "Barnim",
        "cases7_per_100k" : 9.1770853576903999,
        "RS" : "12060",
        "EWZ" : 185244,
        "BEZ" : "Landkreis",
        "OBJECTID" : 330,
        "county" : "LK Barnim",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 519,
        "cases_per_100k" : 280.17101768478301,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 8,
        "GEN" : "Dahme-Spreewald",
        "cases7_per_100k" : 9.3681751380342106,
        "RS" : "12061",
        "EWZ" : 170791,
        "BEZ" : "Landkreis",
        "OBJECTID" : 331,
        "county" : "LK Dahme-Spreewald",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 9.8161918083879396,
        "RS" : "12063",
        "EWZ" : 162996,
        "BEZ" : "Landkreis",
        "OBJECTID" : 333,
        "county" : "LK Havelland",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 291,
        "cases_per_100k" : 178.53198851505601,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 4,
        "GEN" : "Märkisch-Oderland",
        "cases7_per_100k" : 8.6845022503077907,
        "RS" : "12064",
        "EWZ" : 195751,
        "BEZ" : "Landkreis",
        "OBJECTID" : 334,
        "county" : "LK Märkisch-Oderland",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 12.211503236048401,
        "RS" : "12065",
        "EWZ" : 212914,
        "BEZ" : "Landkreis",
        "OBJECTID" : 335,
        "county" : "LK Oberhavel",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 16.457744740379098,
        "RS" : "12066",
        "EWZ" : 109371,
        "BEZ" : "Landkreis",
        "OBJECTID" : 336,
        "county" : "LK Oberspreewald-Lausitz",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 97,
        "cases_per_100k" : 88.688957767598396,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 3,
        "GEN" : "Oder-Spree",
        "cases7_per_100k" : 20.133890370966899,
        "RS" : "12067",
        "EWZ" : 178803,
        "BEZ" : "Landkreis",
        "OBJECTID" : 337,
        "county" : "LK Oder-Spree",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 7.8498009844573904,
        "RS" : "12069",
        "EWZ" : 216566,
        "BEZ" : "Landkreis",
        "OBJECTID" : 339,
        "county" : "LK Potsdam-Mittelmark",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 701,
        "cases_per_100k" : 323.68885235909602,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 0,
        "GEN" : "Prignitz",
        "cases7_per_100k" : 11.817537225242299,
        "RS" : "12070",
        "EWZ" : 76158,
        "BEZ" : "Landkreis",
        "OBJECTID" : 340,
        "county" : "LK Prignitz",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 58,
        "cases_per_100k" : 76.157462118227897,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "12",
        "deaths" : 0,
        "GEN" : "Spree-Neiße",
        "cases7_per_100k" : 18.466408723179701,
        "RS" : "12071",
        "EWZ" : 113720,
        "BEZ" : "Landkreis",
        "OBJECTID" : 341,
        "county" : "LK Spree-Neiße",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 103,
        "cases_per_100k" : 90.573338023214902,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 6.7256845485804604,
        "RS" : "12073",
        "EWZ" : 118947,
        "BEZ" : "Landkreis",
        "OBJECTID" : 343,
        "county" : "LK Uckermark",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 65,
        "cases_per_100k" : 54.646186957216202,
        "BL" : "Brandenburg"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "13",
        "deaths" : 2,
        "GEN" : "Rostock",
        "cases7_per_100k" : 7.1704805656075097,
        "RS" : "13003",
        "EWZ" : 209191,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 344,
        "county" : "SK Rostock",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 1.0454455166069001,
        "RS" : "13004",
        "EWZ" : 95653,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 345,
        "county" : "SK Schwerin",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 8.9121724776614499,
        "RS" : "13071",
        "EWZ" : 258074,
        "BEZ" : "Landkreis",
        "OBJECTID" : 346,
        "county" : "LK Mecklenburgische Seenplatte",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 1.8536196557828299,
        "RS" : "13072",
        "EWZ" : 215794,
        "BEZ" : "Landkreis",
        "OBJECTID" : 347,
        "county" : "LK Rostock",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 2.6702032024637101,
        "RS" : "13073",
        "EWZ" : 224702,
        "BEZ" : "Landkreis",
        "OBJECTID" : 348,
        "county" : "LK Vorpommern-Rügen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 3.8138340473678198,
        "RS" : "13074",
        "EWZ" : 157322,
        "BEZ" : "Landkreis",
        "OBJECTID" : 349,
        "county" : "LK Nordwestmecklenburg",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 11.8833899916392,
        "RS" : "13075",
        "EWZ" : 235623,
        "BEZ" : "Landkreis",
        "OBJECTID" : 350,
        "county" : "LK Vorpommern-Greifswald",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 17.455974408729599,
        "RS" : "14511",
        "EWZ" : 246334,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 352,
        "county" : "SK Chemnitz",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 384,
        "cases_per_100k" : 155.88591099888799,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 49,
        "GEN" : "Erzgebirgskreis",
        "cases7_per_100k" : 32.542364784981601,
        "RS" : "14521",
        "EWZ" : 334948,
        "BEZ" : "Landkreis",
        "OBJECTID" : 353,
        "county" : "LK Erzgebirgskreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1016,
        "cases_per_100k" : 303.33066625267202,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 10,
        "GEN" : "Mittelsachsen",
        "cases7_per_100k" : 9.8652083696427795,
        "RS" : "14522",
        "EWZ" : 304099,
        "BEZ" : "Landkreis",
        "OBJECTID" : 354,
        "county" : "LK Mittelsachsen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 469,
        "cases_per_100k" : 154.226090845415,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 25.396664148164099,
        "RS" : "14524",
        "EWZ" : 315002,
        "BEZ" : "Landkreis",
        "OBJECTID" : 356,
        "county" : "LK Zwickau",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1089,
        "cases_per_100k" : 345.71209071688401,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 12,
        "GEN" : "Dresden",
        "cases7_per_100k" : 23.168935665792599,
        "RS" : "14612",
        "EWZ" : 556780,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 357,
        "county" : "SK Dresden",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1020,
        "cases_per_100k" : 183.19623549696499,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 24,
        "GEN" : "Bautzen",
        "cases7_per_100k" : 21.350556115266301,
        "RS" : "14625",
        "EWZ" : 299758,
        "BEZ" : "Landkreis",
        "OBJECTID" : 358,
        "county" : "LK Bautzen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 15.036106439806099,
        "RS" : "14626",
        "EWZ" : 252725,
        "BEZ" : "Landkreis",
        "OBJECTID" : 359,
        "county" : "LK Görlitz",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 454,
        "cases_per_100k" : 179.641903254526,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 20,
        "GEN" : "Meißen",
        "cases7_per_100k" : 34.337675877162098,
        "RS" : "14627",
        "EWZ" : 241717,
        "BEZ" : "Landkreis",
        "OBJECTID" : 360,
        "county" : "LK Meißen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 377,
        "cases_per_100k" : 155.96751573120599,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 2,
        "GEN" : "Sächsische Schweiz-Osterzgebirge",
        "cases7_per_100k" : 22.802602754228701,
        "RS" : "14628",
        "EWZ" : 245586,
        "BEZ" : "Landkreis",
        "OBJECTID" : 361,
        "county" : "LK Sächsische Schweiz-Osterzgebirge",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 533,
        "cases_per_100k" : 217.031915500069,
        "BL" : "Sachsen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "14",
        "deaths" : 12,
        "GEN" : "Leipzig",
        "cases7_per_100k" : 7.0808992742078196,
        "RS" : "14713",
        "EWZ" : 593145,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 362,
        "county" : "SK Leipzig",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 10.459481132258199,
        "RS" : "14729",
        "EWZ" : 258139,
        "BEZ" : "Landkreis",
        "OBJECTID" : 363,
        "county" : "LK Leipzig",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 281,
        "cases_per_100k" : 108.856081413502,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 21.222675804901201,
        "RS" : "15001",
        "EWZ" : 80103,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 365,
        "county" : "SK Dessau-Roßlau",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 136,
        "cases_per_100k" : 169.78140643921,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 14,
        "GEN" : "Halle (Saale)",
        "cases7_per_100k" : 17.590738894798999,
        "RS" : "15002",
        "EWZ" : 238762,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 366,
        "county" : "SK Halle",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 552,
        "cases_per_100k" : 231.192568331644,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 5,
        "GEN" : "Magdeburg",
        "cases7_per_100k" : 5.0512491318165598,
        "RS" : "15003",
        "EWZ" : 237565,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 367,
        "county" : "SK Magdeburg",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 417,
        "cases_per_100k" : 175.53090733062501,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 1,
        "GEN" : "Altmarkkreis Salzwedel",
        "cases7_per_100k" : 1.2023132506943399,
        "RS" : "15081",
        "EWZ" : 83173,
        "BEZ" : "Landkreis",
        "OBJECTID" : 368,
        "county" : "LK Altmarkkreis Salzwedel",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 4.6804701532268904,
        "RS" : "15083",
        "EWZ" : 170923,
        "BEZ" : "Landkreis",
        "OBJECTID" : 370,
        "county" : "LK Börde",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 216,
        "cases_per_100k" : 126.372694137126,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 3,
        "GEN" : "Burgenlandkreis",
        "cases7_per_100k" : 12.301085850396399,
        "RS" : "15084",
        "EWZ" : 178846,
        "BEZ" : "Landkreis",
        "OBJECTID" : 371,
        "county" : "LK Burgenlandkreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 236,
        "cases_per_100k" : 131.95710275879799,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 301,
        "cases_per_100k" : 141.10918381697999,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 6.5283029132551702,
        "RS" : "15088",
        "EWZ" : 183815,
        "BEZ" : "Landkreis",
        "OBJECTID" : 375,
        "county" : "LK Saalekreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 204,
        "cases_per_100k" : 110.981149525338,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 1,
        "GEN" : "Salzlandkreis",
        "cases7_per_100k" : 2.1150033046926602,
        "RS" : "15089",
        "EWZ" : 189125,
        "BEZ" : "Landkreis",
        "OBJECTID" : 376,
        "county" : "LK Salzlandkreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 129,
        "cases_per_100k" : 68.208856576338405,
        "BL" : "Sachsen-Anhalt"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "15",
        "deaths" : 6,
        "GEN" : "Stendal",
        "cases7_per_100k" : 4.4968072668405403,
        "RS" : "15090",
        "EWZ" : 111190,
        "BEZ" : "Landkreis",
        "OBJECTID" : 377,
        "county" : "LK Stendal",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 129,
        "cases_per_100k" : 116.017627484486,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 313,
        "cases_per_100k" : 336.10738255033601,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 3,
        "GEN" : "Jena",
        "cases7_per_100k" : 14.370009789569201,
        "RS" : "16053",
        "EWZ" : 111343,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 381,
        "county" : "SK Jena",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 240,
        "cases_per_100k" : 215.55014684353799,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 6.1323358067087801,
        "RS" : "16055",
        "EWZ" : 65228,
        "BEZ" : "Kreisfreie Stadt",
        "OBJECTID" : 383,
        "county" : "SK Weimar",
        "IBZ" : 40,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 36.997780133192002,
        "RS" : "16061",
        "EWZ" : 100006,
        "BEZ" : "Landkreis",
        "OBJECTID" : 385,
        "county" : "LK Eichsfeld",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 215,
        "cases_per_100k" : 214.98710077395401,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 70,
        "cases_per_100k" : 94.324368026734206,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 6,
        "GEN" : "Schmalkalden-Meiningen",
        "cases7_per_100k" : 5.6037657305709399,
        "RS" : "16066",
        "EWZ" : 124916,
        "BEZ" : "Landkreis",
        "OBJECTID" : 390,
        "county" : "LK Schmalkalden-Meiningen",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 18.5311471521333,
        "RS" : "16067",
        "EWZ" : 134908,
        "BEZ" : "Landkreis",
        "OBJECTID" : 391,
        "county" : "LK Gotha",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 390,
        "cases_per_100k" : 289.08589557328003,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 1,
        "GEN" : "Sömmerda",
        "cases7_per_100k" : 17.2843418266669,
        "RS" : "16068",
        "EWZ" : 69427,
        "BEZ" : "Landkreis",
        "OBJECTID" : 392,
        "county" : "LK Sömmerda",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 78,
        "cases_per_100k" : 112.34822187333501,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 6.5882973016216599,
        "RS" : "16070",
        "EWZ" : 106249,
        "BEZ" : "Landkreis",
        "OBJECTID" : 394,
        "county" : "LK Ilm-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 225,
        "cases_per_100k" : 211.76669898069599,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 4.84500818806384,
        "RS" : "16073",
        "EWZ" : 103199,
        "BEZ" : "Landkreis",
        "OBJECTID" : 397,
        "county" : "LK Saalfeld-Rudolstadt",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 114,
        "cases_per_100k" : 110.46618668785599,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 3,
        "GEN" : "Saale-Holzland-Kreis",
        "cases7_per_100k" : 20.4942736588306,
        "RS" : "16074",
        "EWZ" : 82950,
        "BEZ" : "Landkreis",
        "OBJECTID" : 398,
        "county" : "LK Saale-Holzland-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 124,
        "cases_per_100k" : 149.48764315852901,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 12,
        "GEN" : "Saale-Orla-Kreis",
        "cases7_per_100k" : 14.9417272636717,
        "RS" : "16075",
        "EWZ" : 80312,
        "BEZ" : "Landkreis",
        "OBJECTID" : 399,
        "county" : "LK Saale-Orla-Kreis",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 215,
        "cases_per_100k" : 267.70594680745103,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 711,
        "cases_per_100k" : 729.99445573831099,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "16",
        "deaths" : 4,
        "GEN" : "Altenburger Land",
        "cases7_per_100k" : 13.4238698779546,
        "RS" : "16077",
        "EWZ" : 89393,
        "BEZ" : "Landkreis",
        "OBJECTID" : 401,
        "county" : "LK Altenburger Land",
        "IBZ" : 43,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 125,
        "cases_per_100k" : 139.83197789536101,
        "BL" : "Thüringen"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 22,
        "GEN" : "Berlin Reinickendorf",
        "cases7_per_100k" : 57.376323217386997,
        "RS" : "11012",
        "EWZ" : 259689,
        "BEZ" : "Bezirk",
        "OBJECTID" : 404,
        "county" : "SK Berlin Reinickendorf",
        "IBZ" : null,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1267,
        "cases_per_100k" : 487.891285345163,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 23,
        "GEN" : "Berlin Charlottenburg-Wilmersdorf",
        "cases7_per_100k" : 53.827590228498103,
        "RS" : "11004",
        "EWZ" : 334401,
        "BEZ" : "Bezirk",
        "OBJECTID" : 405,
        "county" : "SK Berlin Charlottenburg-Wilmersdorf",
        "IBZ" : null,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1717,
        "cases_per_100k" : 513.45540234628504,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 128.92256238263801,
        "RS" : "11008",
        "EWZ" : 321123,
        "BEZ" : "Bezirk",
        "OBJECTID" : 408,
        "county" : "SK Berlin Neukölln",
        "IBZ" : null,
        "last_update" : "11.10.2020, 00:00 Uhr",
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
        "cases7_per_100k" : 22.685867053838798,
        "RS" : "11011",
        "EWZ" : 286522,
        "BEZ" : "Bezirk",
        "OBJECTID" : 409,
        "county" : "SK Berlin Lichtenberg",
        "IBZ" : null,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 909,
        "cases_per_100k" : 317.253125414453,
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
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 797,
        "cases_per_100k" : 303.07985412618302,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 9,
        "GEN" : "Berlin Spandau",
        "cases7_per_100k" : 46.439822775595204,
        "RS" : "11005",
        "EWZ" : 239019,
        "BEZ" : "Bezirk",
        "OBJECTID" : 411,
        "county" : "SK Berlin Spandau",
        "IBZ" : null,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 967,
        "cases_per_100k" : 404.57034796396903,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 13,
        "GEN" : "Berlin Steglitz-Zehlendorf",
        "cases7_per_100k" : 47.9851213030773,
        "RS" : "11006",
        "EWZ" : 302177,
        "BEZ" : "Bezirk",
        "OBJECTID" : 412,
        "county" : "SK Berlin Steglitz-Zehlendorf",
        "IBZ" : null,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1136,
        "cases_per_100k" : 375.93860551928202,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 21,
        "GEN" : "Berlin Mitte",
        "cases7_per_100k" : 103.134543942778,
        "RS" : "11001",
        "EWZ" : 375238,
        "BEZ" : "Bezirk",
        "OBJECTID" : 413,
        "county" : "SK Berlin Mitte",
        "IBZ" : null,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 2868,
        "cases_per_100k" : 764.31491480073998,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 9,
        "GEN" : "Berlin Friedrichshain-Kreuzberg",
        "cases7_per_100k" : 62.043756802654798,
        "RS" : "11002",
        "EWZ" : 282059,
        "BEZ" : "Bezirk",
        "OBJECTID" : 414,
        "county" : "SK Berlin Friedrichshain-Kreuzberg",
        "IBZ" : null,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1781,
        "cases_per_100k" : 631.42817637444602,
        "BL" : "Berlin"
      }
    },
    {
      "attributes" : {
        "BL_ID" : "11",
        "deaths" : 26,
        "GEN" : "Berlin Tempelhof-Schöneberg",
        "cases7_per_100k" : 79.585220556394304,
        "RS" : "11007",
        "EWZ" : 341772,
        "BEZ" : "Bezirk",
        "OBJECTID" : 415,
        "county" : "SK Berlin Tempelhof-Schöneberg",
        "IBZ" : null,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "cases" : 1799,
        "cases_per_100k" : 526.37430801821097,
        "BL" : "Berlin"
      }
    }
  ],
  "spatialReference" : {
    "latestWkid" : 4326,
    "wkid" : 4326
  },
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
  ],
  "objectIdFieldName" : "OBJECTID",
  "globalIdFieldName" : ""
}
"""

// MARK: var jsonDummyDataRecovered_20201011 -
var jsonDummyDataRecovered_20201011: String = """
{
  "globalIdFieldName" : "",
  "objectIdFieldName" : "ObjectId",
  "uniqueIdField" : {
    "name" : "ObjectId",
    "isSystemMaintained" : true
  },
  "features" : [
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01001",
        "sumGenesene" : 108
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01003",
        "sumGenesene" : 291
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01051",
        "sumGenesene" : 202
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01053",
        "sumGenesene" : 339
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01055",
        "sumGenesene" : 134
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01058",
        "sumGenesene" : 338
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01059",
        "sumGenesene" : 184
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03251",
        "sumGenesene" : 592
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03353",
        "sumGenesene" : 833
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03354",
        "sumGenesene" : 43
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03358",
        "sumGenesene" : 122
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03359",
        "sumGenesene" : 355
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03361",
        "sumGenesene" : 360
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03403",
        "sumGenesene" : 300
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03452",
        "sumGenesene" : 208
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03458",
        "sumGenesene" : 456
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03459",
        "sumGenesene" : 1401
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "04011",
        "sumGenesene" : 1954
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05112",
        "sumGenesene" : 2778
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05116",
        "sumGenesene" : 1045
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05119",
        "sumGenesene" : 594
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05124",
        "sumGenesene" : 1634
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05158",
        "sumGenesene" : 1916
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05314",
        "sumGenesene" : 1250
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05316",
        "sumGenesene" : 578
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05362",
        "sumGenesene" : 1666
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05374",
        "sumGenesene" : 859
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05378",
        "sumGenesene" : 728
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05512",
        "sumGenesene" : 342
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05513",
        "sumGenesene" : 1141
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05762",
        "sumGenesene" : 421
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05766",
        "sumGenesene" : 964
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05915",
        "sumGenesene" : 1073
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05966",
        "sumGenesene" : 746
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05974",
        "sumGenesene" : 555
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05978",
        "sumGenesene" : 1300
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06412",
        "sumGenesene" : 3331
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06432",
        "sumGenesene" : 705
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06438",
        "sumGenesene" : 1198
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06439",
        "sumGenesene" : 490
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06532",
        "sumGenesene" : 511
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06533",
        "sumGenesene" : 464
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06534",
        "sumGenesene" : 449
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06631",
        "sumGenesene" : 585
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06635",
        "sumGenesene" : 250
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07111",
        "sumGenesene" : 331
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07132",
        "sumGenesene" : 240
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07141",
        "sumGenesene" : 206
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07317",
        "sumGenesene" : 50
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07333",
        "sumGenesene" : 173
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08116",
        "sumGenesene" : 2530
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08119",
        "sumGenesene" : 2104
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08121",
        "sumGenesene" : 675
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08125",
        "sumGenesene" : 1257
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08127",
        "sumGenesene" : 1044
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08212",
        "sumGenesene" : 665
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08226",
        "sumGenesene" : 1562
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08237",
        "sumGenesene" : 616
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08311",
        "sumGenesene" : 1179
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08316",
        "sumGenesene" : 629
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08336",
        "sumGenesene" : 832
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08416",
        "sumGenesene" : 1479
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08435",
        "sumGenesene" : 541
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09161",
        "sumGenesene" : 753
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09172",
        "sumGenesene" : 420
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09176",
        "sumGenesene" : 409
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09179",
        "sumGenesene" : 1276
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09183",
        "sumGenesene" : 632
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09184",
        "sumGenesene" : 1920
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09271",
        "sumGenesene" : 441
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09279",
        "sumGenesene" : 962
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09363",
        "sumGenesene" : 371
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09371",
        "sumGenesene" : 494
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09376",
        "sumGenesene" : 576
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09471",
        "sumGenesene" : 456
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09474",
        "sumGenesene" : 293
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09475",
        "sumGenesene" : 511
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09562",
        "sumGenesene" : 379
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01057",
        "sumGenesene" : 157
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01060",
        "sumGenesene" : 460
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "02000",
        "sumGenesene" : 7086
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03101",
        "sumGenesene" : 456
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03153",
        "sumGenesene" : 285
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03154",
        "sumGenesene" : 164
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03157",
        "sumGenesene" : 265
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03255",
        "sumGenesene" : 128
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03256",
        "sumGenesene" : 114
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03351",
        "sumGenesene" : 288
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03356",
        "sumGenesene" : 182
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03401",
        "sumGenesene" : 181
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03456",
        "sumGenesene" : 283
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03462",
        "sumGenesene" : 66
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05111",
        "sumGenesene" : 2810
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05154",
        "sumGenesene" : 1036
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05170",
        "sumGenesene" : 1359
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05515",
        "sumGenesene" : 1057
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05554",
        "sumGenesene" : 1332
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05558",
        "sumGenesene" : 931
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05570",
        "sumGenesene" : 1033
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05711",
        "sumGenesene" : 796
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05758",
        "sumGenesene" : 636
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05774",
        "sumGenesene" : 870
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05954",
        "sumGenesene" : 864
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05958",
        "sumGenesene" : 869
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05970",
        "sumGenesene" : 710
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06435",
        "sumGenesene" : 1322
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06436",
        "sumGenesene" : 716
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06440",
        "sumGenesene" : 599
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06535",
        "sumGenesene" : 181
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07131",
        "sumGenesene" : 351
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07138",
        "sumGenesene" : 396
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07233",
        "sumGenesene" : 140
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07235",
        "sumGenesene" : 388
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07312",
        "sumGenesene" : 289
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07314",
        "sumGenesene" : 603
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07318",
        "sumGenesene" : 155
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07319",
        "sumGenesene" : 319
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07320",
        "sumGenesene" : 62
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07331",
        "sumGenesene" : 362
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07335",
        "sumGenesene" : 205
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07336",
        "sumGenesene" : 134
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08111",
        "sumGenesene" : 2679
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08118",
        "sumGenesene" : 2375
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08136",
        "sumGenesene" : 1782
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08211",
        "sumGenesene" : 202
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08222",
        "sumGenesene" : 1081
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08231",
        "sumGenesene" : 599
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08325",
        "sumGenesene" : 746
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08326",
        "sumGenesene" : 654
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08425",
        "sumGenesene" : 857
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08426",
        "sumGenesene" : 787
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08437",
        "sumGenesene" : 856
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09171",
        "sumGenesene" : 694
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09178",
        "sumGenesene" : 1191
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09185",
        "sumGenesene" : 413
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09187",
        "sumGenesene" : 2381
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09262",
        "sumGenesene" : 203
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09273",
        "sumGenesene" : 637
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09275",
        "sumGenesene" : 783
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09276",
        "sumGenesene" : 230
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09278",
        "sumGenesene" : 597
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09361",
        "sumGenesene" : 126
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09373",
        "sumGenesene" : 542
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09374",
        "sumGenesene" : 817
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09462",
        "sumGenesene" : 254
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09473",
        "sumGenesene" : 411
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09477",
        "sumGenesene" : 303
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09565",
        "sumGenesene" : 120
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09574",
        "sumGenesene" : 742
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09661",
        "sumGenesene" : 184
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09671",
        "sumGenesene" : 665
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09761",
        "sumGenesene" : 1024
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09773",
        "sumGenesene" : 346
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09774",
        "sumGenesene" : 403
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09775",
        "sumGenesene" : 762
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09776",
        "sumGenesene" : 303
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01056",
        "sumGenesene" : 811
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01062",
        "sumGenesene" : 605
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03103",
        "sumGenesene" : 395
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03151",
        "sumGenesene" : 248
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03155",
        "sumGenesene" : 179
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03252",
        "sumGenesene" : 224
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03257",
        "sumGenesene" : 297
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03355",
        "sumGenesene" : 246
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03451",
        "sumGenesene" : 223
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03455",
        "sumGenesene" : 108
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03460",
        "sumGenesene" : 645
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05113",
        "sumGenesene" : 1998
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05114",
        "sumGenesene" : 986
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05120",
        "sumGenesene" : 483
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05122",
        "sumGenesene" : 628
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05162",
        "sumGenesene" : 1309
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05166",
        "sumGenesene" : 955
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05315",
        "sumGenesene" : 4022
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05358",
        "sumGenesene" : 965
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05366",
        "sumGenesene" : 747
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05562",
        "sumGenesene" : 2184
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05754",
        "sumGenesene" : 2987
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05914",
        "sumGenesene" : 777
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05916",
        "sumGenesene" : 552
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05962",
        "sumGenesene" : 1071
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06411",
        "sumGenesene" : 420
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06414",
        "sumGenesene" : 1030
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06431",
        "sumGenesene" : 635
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06434",
        "sumGenesene" : 509
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06437",
        "sumGenesene" : 427
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06531",
        "sumGenesene" : 469
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06611",
        "sumGenesene" : 569
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07133",
        "sumGenesene" : 318
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07134",
        "sumGenesene" : 122
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07232",
        "sumGenesene" : 301
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07313",
        "sumGenesene" : 88
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07337",
        "sumGenesene" : 176
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07340",
        "sumGenesene" : 144
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08128",
        "sumGenesene" : 517
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08135",
        "sumGenesene" : 581
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08216",
        "sumGenesene" : 678
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08221",
        "sumGenesene" : 513
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08225",
        "sumGenesene" : 504
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08315",
        "sumGenesene" : 1410
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08327",
        "sumGenesene" : 588
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08335",
        "sumGenesene" : 729
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08415",
        "sumGenesene" : 1738
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08421",
        "sumGenesene" : 559
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09173",
        "sumGenesene" : 629
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09174",
        "sumGenesene" : 1209
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09180",
        "sumGenesene" : 400
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09182",
        "sumGenesene" : 728
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09186",
        "sumGenesene" : 480
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09189",
        "sumGenesene" : 1351
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09263",
        "sumGenesene" : 454
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09272",
        "sumGenesene" : 230
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09277",
        "sumGenesene" : 814
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09372",
        "sumGenesene" : 490
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09375",
        "sumGenesene" : 701
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09463",
        "sumGenesene" : 143
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09464",
        "sumGenesene" : 183
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09472",
        "sumGenesene" : 424
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09478",
        "sumGenesene" : 352
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09479",
        "sumGenesene" : 720
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09561",
        "sumGenesene" : 186
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09572",
        "sumGenesene" : 367
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09573",
        "sumGenesene" : 538
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09663",
        "sumGenesene" : 632
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09673",
        "sumGenesene" : 269
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09674",
        "sumGenesene" : 217
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09677",
        "sumGenesene" : 225
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09772",
        "sumGenesene" : 628
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09777",
        "sumGenesene" : 658
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "10042",
        "sumGenesene" : 283
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11004",
        "sumGenesene" : 1400
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11009",
        "sumGenesene" : 551
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11010",
        "sumGenesene" : 700
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11012",
        "sumGenesene" : 1040
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12051",
        "sumGenesene" : 79
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12053",
        "sumGenesene" : 72
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12066",
        "sumGenesene" : 75
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12072",
        "sumGenesene" : 260
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13004",
        "sumGenesene" : 128
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13074",
        "sumGenesene" : 129
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14524",
        "sumGenesene" : 929
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14626",
        "sumGenesene" : 365
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14628",
        "sumGenesene" : 429
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14713",
        "sumGenesene" : 821
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14729",
        "sumGenesene" : 238
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15001",
        "sumGenesene" : 94
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15003",
        "sumGenesene" : 386
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15082",
        "sumGenesene" : 107
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16054",
        "sumGenesene" : 31
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16061",
        "sumGenesene" : 167
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16063",
        "sumGenesene" : 131
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16064",
        "sumGenesene" : 111
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16069",
        "sumGenesene" : 93
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16074",
        "sumGenesene" : 98
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09780",
        "sumGenesene" : 269
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "10043",
        "sumGenesene" : 327
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "10045",
        "sumGenesene" : 413
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "10046",
        "sumGenesene" : 185
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11001",
        "sumGenesene" : 2298
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12052",
        "sumGenesene" : 55
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12054",
        "sumGenesene" : 684
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12065",
        "sumGenesene" : 389
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12067",
        "sumGenesene" : 198
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12068",
        "sumGenesene" : 109
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13071",
        "sumGenesene" : 166
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14612",
        "sumGenesene" : 820
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14625",
        "sumGenesene" : 580
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14627",
        "sumGenesene" : 268
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14730",
        "sumGenesene" : 232
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15002",
        "sumGenesene" : 457
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15083",
        "sumGenesene" : 193
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15085",
        "sumGenesene" : 280
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15086",
        "sumGenesene" : 65
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15087",
        "sumGenesene" : 85
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15088",
        "sumGenesene" : 165
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15089",
        "sumGenesene" : 107
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15091",
        "sumGenesene" : 220
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16051",
        "sumGenesene" : 231
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16070",
        "sumGenesene" : 207
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16071",
        "sumGenesene" : 138
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09563",
        "sumGenesene" : 557
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09571",
        "sumGenesene" : 666
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09577",
        "sumGenesene" : 426
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09672",
        "sumGenesene" : 276
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09676",
        "sumGenesene" : 430
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09678",
        "sumGenesene" : 628
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09679",
        "sumGenesene" : 555
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09763",
        "sumGenesene" : 171
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09764",
        "sumGenesene" : 136
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09771",
        "sumGenesene" : 481
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09778",
        "sumGenesene" : 383
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09779",
        "sumGenesene" : 457
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "10044",
        "sumGenesene" : 683
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11002",
        "sumGenesene" : 1479
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12061",
        "sumGenesene" : 324
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12063",
        "sumGenesene" : 258
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12069",
        "sumGenesene" : 623
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12071",
        "sumGenesene" : 75
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12073",
        "sumGenesene" : 50
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13072",
        "sumGenesene" : 96
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13075",
        "sumGenesene" : 180
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14511",
        "sumGenesene" : 308
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14521",
        "sumGenesene" : 737
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14523",
        "sumGenesene" : 674
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15084",
        "sumGenesene" : 171
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15090",
        "sumGenesene" : 115
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16052",
        "sumGenesene" : 261
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16055",
        "sumGenesene" : 131
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16062",
        "sumGenesene" : 74
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16072",
        "sumGenesene" : 301
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01002",
        "sumGenesene" : 455
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01004",
        "sumGenesene" : 159
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01054",
        "sumGenesene" : 130
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "01061",
        "sumGenesene" : 222
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03102",
        "sumGenesene" : 258
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03158",
        "sumGenesene" : 222
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03159",
        "sumGenesene" : 1371
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03241",
        "sumGenesene" : 3742
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03254",
        "sumGenesene" : 560
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03352",
        "sumGenesene" : 416
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03357",
        "sumGenesene" : 282
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03360",
        "sumGenesene" : 97
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03402",
        "sumGenesene" : 44
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03404",
        "sumGenesene" : 745
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03405",
        "sumGenesene" : 52
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03453",
        "sumGenesene" : 615
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03454",
        "sumGenesene" : 719
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03457",
        "sumGenesene" : 239
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "03461",
        "sumGenesene" : 161
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "04012",
        "sumGenesene" : 267
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05117",
        "sumGenesene" : 611
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05334",
        "sumGenesene" : 2633
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05370",
        "sumGenesene" : 2066
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05382",
        "sumGenesene" : 1935
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05566",
        "sumGenesene" : 1739
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05770",
        "sumGenesene" : 892
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05911",
        "sumGenesene" : 1179
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "05913",
        "sumGenesene" : 2027
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06413",
        "sumGenesene" : 578
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06433",
        "sumGenesene" : 976
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06632",
        "sumGenesene" : 353
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06633",
        "sumGenesene" : 529
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06634",
        "sumGenesene" : 640
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "06636",
        "sumGenesene" : 240
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07135",
        "sumGenesene" : 169
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07137",
        "sumGenesene" : 462
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07140",
        "sumGenesene" : 221
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07143",
        "sumGenesene" : 569
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07211",
        "sumGenesene" : 207
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07231",
        "sumGenesene" : 248
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07311",
        "sumGenesene" : 84
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07315",
        "sumGenesene" : 1006
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07316",
        "sumGenesene" : 152
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07332",
        "sumGenesene" : 371
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07334",
        "sumGenesene" : 359
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07338",
        "sumGenesene" : 380
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "07339",
        "sumGenesene" : 586
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08115",
        "sumGenesene" : 1969
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08117",
        "sumGenesene" : 1117
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08126",
        "sumGenesene" : 810
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08215",
        "sumGenesene" : 1320
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08235",
        "sumGenesene" : 881
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08236",
        "sumGenesene" : 814
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08317",
        "sumGenesene" : 1355
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08337",
        "sumGenesene" : 396
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08417",
        "sumGenesene" : 1334
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "08436",
        "sumGenesene" : 859
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09162",
        "sumGenesene" : 10703
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09163",
        "sumGenesene" : 691
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09175",
        "sumGenesene" : 746
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09177",
        "sumGenesene" : 845
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09181",
        "sumGenesene" : 457
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09188",
        "sumGenesene" : 772
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09190",
        "sumGenesene" : 473
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09261",
        "sumGenesene" : 441
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09274",
        "sumGenesene" : 821
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09362",
        "sumGenesene" : 893
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09377",
        "sumGenesene" : 1069
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09461",
        "sumGenesene" : 224
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09476",
        "sumGenesene" : 182
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09564",
        "sumGenesene" : 1967
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09575",
        "sumGenesene" : 291
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09576",
        "sumGenesene" : 354
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09662",
        "sumGenesene" : 215
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09675",
        "sumGenesene" : 291
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "09762",
        "sumGenesene" : 182
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "10041",
        "sumGenesene" : 1253
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11003",
        "sumGenesene" : 1253
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11005",
        "sumGenesene" : 796
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11006",
        "sumGenesene" : 907
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11007",
        "sumGenesene" : 1366
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11008",
        "sumGenesene" : 1821
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "11011",
        "sumGenesene" : 764
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12060",
        "sumGenesene" : 462
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12062",
        "sumGenesene" : 105
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12064",
        "sumGenesene" : 282
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "12070",
        "sumGenesene" : 49
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13003",
        "sumGenesene" : 184
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13073",
        "sumGenesene" : 122
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "13076",
        "sumGenesene" : 152
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "14522",
        "sumGenesene" : 386
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "15081",
        "sumGenesene" : 53
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16053",
        "sumGenesene" : 215
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16056",
        "sumGenesene" : 40
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16065",
        "sumGenesene" : 66
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16066",
        "sumGenesene" : 194
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16067",
        "sumGenesene" : 335
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16068",
        "sumGenesene" : 62
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16073",
        "sumGenesene" : 93
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16075",
        "sumGenesene" : 180
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16076",
        "sumGenesene" : 648
      }
    },
    {
      "attributes" : {
        "last_update" : "11.10.2020, 00:00 Uhr",
        "IdLandkreis" : "16077",
        "sumGenesene" : 109
      }
    }
  ],
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
  ]
}
"""

// MARK: var jsonDummyDataNewToday_20201011 -
var jsonDummyDataNewToday_20201011:  String = """
{
  "uniqueIdField" : {
    "name" : "ObjectId",
    "isSystemMaintained" : true
  },
  "features" : [
    {
      "attributes" : {
        "IdLandkreis" : "01055",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01059",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "02000",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03151",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03254",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03404",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03459",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03460",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 16
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "04012",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05120",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05122",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 20
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05124",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 41
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05158",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05162",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 35
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05166",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05314",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 26
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05374",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 15
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05562",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 62
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05770",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05916",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 31
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05974",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 13
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05978",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 72
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06411",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06438",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 23
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06439",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 28
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06531",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06533",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 16
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06611",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07211",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07232",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08115",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 33
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08127",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 17
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08216",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08221",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08237",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08337",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08421",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 23
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08436",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09179",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 39
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09183",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09184",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 38
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09186",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09363",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09372",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09377",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09461",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09472",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09563",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09679",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09762",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09764",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "10042",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 12
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "10044",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 21
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11002",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11010",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12063",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12066",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12069",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14522",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15001",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15084",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01004",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01056",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03101",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03159",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03401",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03453",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 22
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03457",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "04011",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05111",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 48
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05334",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05382",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05711",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 16
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05913",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 47
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05914",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 41
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05970",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06412",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06413",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 19
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06414",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06433",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 38
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06434",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06437",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06440",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 17
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06633",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06634",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07131",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07143",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07312",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07315",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07331",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07334",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07339",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08111",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 82
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08117",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08136",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08211",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08222",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 38
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08231",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08317",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 31
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08335",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08417",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08426",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 12
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09163",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09175",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09188",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 36
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09271",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09276",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 23
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09361",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09375",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09663",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09671",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09777",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "10046",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11001",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 47
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11005",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 39
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11007",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 57
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11012",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 27
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12052",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14612",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 21
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14626",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 17
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14729",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15002",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 19
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16053",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16061",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 30
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16065",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16067",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 16
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16068",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16070",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16073",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16075",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16077",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01001",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01060",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "02000",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 101
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03155",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03361",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03456",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 17
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "04011",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 173
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05112",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 40
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05113",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 58
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05116",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 18
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05154",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 15
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05162",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05315",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 117
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05358",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05362",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 33
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05515",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 43
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05570",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05762",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05958",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06412",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 54
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06432",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06435",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 39
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06532",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07134",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07141",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08121",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08128",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08135",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08225",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08226",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 35
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08311",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 16
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08315",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08316",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08327",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08336",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08415",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 9
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08416",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 28
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08425",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08436",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09161",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09176",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09184",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09189",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09263",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09371",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09376",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09462",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09471",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09478",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09479",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09562",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09573",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09661",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09674",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09775",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 15
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11002",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 41
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11004",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 14
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11007",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12053",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14511",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14521",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 13
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14524",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14628",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 17
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15003",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15090",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16074",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01002",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "01058",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03102",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03241",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 16
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03353",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 21
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "03461",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05382",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 37
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05566",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 29
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05774",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05915",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "05966",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 18
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "06636",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07138",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07140",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07233",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "07335",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 28
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08116",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 60
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08126",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08236",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08325",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "08437",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09162",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 113
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09163",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09185",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09187",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 20
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09189",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09190",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09271",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09278",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09279",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09362",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 11
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09374",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09474",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "09577",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "10041",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 32
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "10045",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 12
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "10046",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11001",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11006",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 32
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "11011",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 10
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12054",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 4
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12060",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 7
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12066",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12070",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 5
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12071",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 8
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "12073",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 3
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14612",
        "NeuerFall" : -1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : -1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "14627",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 34
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15083",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15085",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15088",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 6
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "15089",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16052",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 1
      }
    },
    {
      "attributes" : {
        "IdLandkreis" : "16076",
        "NeuerFall" : 1,
        "last_update" : "11.10.2020, 00:00 Uhr",
        "AnzahlNeueFaelle" : 2
      }
    }
  ],
  "globalIdFieldName" : "",
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
// MARK: var jsonDummyDataNewestTimeStamp_20201011 -
var jsonDummyDataNewestTimeStamp_20201011: String = """
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
        "last_update" : "11.10.2020, 00:00 Uhr"
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
