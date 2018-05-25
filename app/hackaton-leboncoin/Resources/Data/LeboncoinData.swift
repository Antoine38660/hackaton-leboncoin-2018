//
//  LeboncoinData.swift
//  hackaton-leboncoin
//
//  Created by Antoine BOISADAM on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import Foundation

class LeboncoinData {
    static var json: String {
        return """
        {
        "ads": [
        {
        "ad_type": "offer",
        "body": "Bonjour bracelet inspiration de la fameuse marque dinh van en argent 925.\\n\\nPas de facture ni de boîte.",
        "category_id": "42",
        "category_name": "Montres & Bijoux",
        "expiration_date": "2018-07-24 22:35:24",
        "first_publication_date": "2018-05-25 22:35:24",
        "has_phone": true,
        "images": {
        "nb_images": 2,
        "small_url": "https://img4.leboncoin.fr/ad-small/e3cd461e69b13067ededfeeaa69cf2c85f1f473b.jpg",
        "thumb_url": "https://img4.leboncoin.fr/ad-thumb/e3cd461e69b13067ededfeeaa69cf2c85f1f473b.jpg",
        "urls": [
        "https://img4.leboncoin.fr/ad-image/e3cd461e69b13067ededfeeaa69cf2c85f1f473b.jpg",
        "https://img4.leboncoin.fr/ad-image/95238833cc967a612a0d47e324a61e7d779e9069.jpg"
        ],
        "urls_large": [
        "https://img4.leboncoin.fr/ad-large/e3cd461e69b13067ededfeeaa69cf2c85f1f473b.jpg",
        "https://img4.leboncoin.fr/ad-large/95238833cc967a612a0d47e324a61e7d779e9069.jpg"
        ],
        "urls_thumb": [
        "https://img4.leboncoin.fr/ad-thumb/e3cd461e69b13067ededfeeaa69cf2c85f1f473b.jpg",
        "https://img4.leboncoin.fr/ad-thumb/95238833cc967a612a0d47e324a61e7d779e9069.jpg"
        ]
        },
        "index_date": "2018-05-25 22:35:24",
        "list_id": 1438509222,
        "location": {
        "city": "Grenoble",
        "city_label": "Grenoble 38100",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": true,
        "lat": 45.17201,
        "lng": 5.72631,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "city",
        "zipcode": "38100"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "Mr vegas",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        40
        ],
        "price_calendar": null,
        "subject": "Bracelet inspiration dinh van",
        "url": "https://www.leboncoin.fr/vi/1438509222.htm"
        },
        {
        "ad_type": "offer",
        "body": "Clio pour pièces manque que : capot 2 ailes et feux",
        "category_id": "6",
        "category_name": "Equipement Auto",
        "expiration_date": "2018-07-24 22:35:23",
        "first_publication_date": "2018-05-25 22:35:23",
        "has_phone": false,
        "images": {
        "nb_images": 1,
        "small_url": "https://img0.leboncoin.fr/ad-small/5bd4f492810ae111ebdced0f789cffc8a668504c.jpg",
        "thumb_url": "https://img0.leboncoin.fr/ad-thumb/5bd4f492810ae111ebdced0f789cffc8a668504c.jpg",
        "urls": [
        "https://img0.leboncoin.fr/ad-image/5bd4f492810ae111ebdced0f789cffc8a668504c.jpg"
        ],
        "urls_large": [
        "https://img0.leboncoin.fr/ad-large/5bd4f492810ae111ebdced0f789cffc8a668504c.jpg"
        ],
        "urls_thumb": [
        "https://img0.leboncoin.fr/ad-thumb/5bd4f492810ae111ebdced0f789cffc8a668504c.jpg"
        ]
        },
        "index_date": "2018-05-25 22:35:23",
        "list_id": 1406545801,
        "location": {
        "city": "Coublevie",
        "city_label": "Coublevie 38500",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": false,
        "lat": 45.3503,
        "lng": 5.600799,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "user",
        "zipcode": "38500"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "Valérie Decurey",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        200
        ],
        "price_calendar": null,
        "subject": "Clio 2 pour pièces",
        "url": "https://www.leboncoin.fr/vi/1406545801.htm"
        },
        {
        "ad_type": "offer",
        "body": "Vends Fer à Repasser Calor, modèle : Primagliss.\\n\\nEnvoi possible, frais de port en sus. \\n\\nPour plus d'infos / photos, n'hésitez pas à me contacter. :-)",
        "category_id": "20",
        "category_name": "Electroménager",
        "expiration_date": "2018-07-24 22:34:34",
        "first_publication_date": "2018-05-25 22:34:34",
        "has_phone": true,
        "images": {
        "nb_images": 3,
        "small_url": "https://img0.leboncoin.fr/ad-small/390e0a2fab58d754258278d4edd2966b0dbf4131.jpg",
        "thumb_url": "https://img0.leboncoin.fr/ad-thumb/390e0a2fab58d754258278d4edd2966b0dbf4131.jpg",
        "urls": [
        "https://img0.leboncoin.fr/ad-image/390e0a2fab58d754258278d4edd2966b0dbf4131.jpg",
        "https://img4.leboncoin.fr/ad-image/100d8ab9a33d08e9b39cbe2885b5897197aac18c.jpg",
        "https://img5.leboncoin.fr/ad-image/25b2d99101af1421fdca3f9e79fa2ab5220b8cb5.jpg"
        ],
        "urls_large": [
        "https://img0.leboncoin.fr/ad-large/390e0a2fab58d754258278d4edd2966b0dbf4131.jpg",
        "https://img4.leboncoin.fr/ad-large/100d8ab9a33d08e9b39cbe2885b5897197aac18c.jpg",
        "https://img5.leboncoin.fr/ad-large/25b2d99101af1421fdca3f9e79fa2ab5220b8cb5.jpg"
        ],
        "urls_thumb": [
        "https://img0.leboncoin.fr/ad-thumb/390e0a2fab58d754258278d4edd2966b0dbf4131.jpg",
        "https://img4.leboncoin.fr/ad-thumb/100d8ab9a33d08e9b39cbe2885b5897197aac18c.jpg",
        "https://img5.leboncoin.fr/ad-thumb/25b2d99101af1421fdca3f9e79fa2ab5220b8cb5.jpg"
        ]
        },
        "index_date": "2018-05-25 22:34:34",
        "list_id": 970409200,
        "location": {
        "city": "Le Passage",
        "city_label": "Le Passage 38490",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": true,
        "lat": 45.53427,
        "lng": 5.51145,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "city",
        "zipcode": "38490"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "Margo",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        8
        ],
        "price_calendar": null,
        "subject": "Fer à Repasser Calor",
        "url": "https://www.leboncoin.fr/vi/970409200.htm"
        },
        {
        "ad_type": "offer",
        "body": "Vends lot de 4 plats à crème brûlée\\nCouleur : blanc\\n\\nEnvoi possible, frais de port en sus.\\n\\nPour plus d'infos, n'hésitez pas à me contacter. :-)",
        "category_id": "45",
        "category_name": "Arts de la table",
        "expiration_date": "2018-07-24 22:34:02",
        "first_publication_date": "2018-05-25 22:34:02",
        "has_phone": true,
        "images": {
        "nb_images": 1,
        "small_url": "https://img7.leboncoin.fr/ad-small/976fcc0a1fcb41b52e5d4e3082b26351b9248b8a.jpg",
        "thumb_url": "https://img7.leboncoin.fr/ad-thumb/976fcc0a1fcb41b52e5d4e3082b26351b9248b8a.jpg",
        "urls": [
        "https://img7.leboncoin.fr/ad-image/976fcc0a1fcb41b52e5d4e3082b26351b9248b8a.jpg"
        ],
        "urls_large": [
        "https://img7.leboncoin.fr/ad-large/976fcc0a1fcb41b52e5d4e3082b26351b9248b8a.jpg"
        ],
        "urls_thumb": [
        "https://img7.leboncoin.fr/ad-thumb/976fcc0a1fcb41b52e5d4e3082b26351b9248b8a.jpg"
        ]
        },
        "index_date": "2018-05-25 22:34:02",
        "list_id": 855358407,
        "location": {
        "city": "Le Passage",
        "city_label": "Le Passage 38490",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": true,
        "lat": 45.53427,
        "lng": 5.51145,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "city",
        "zipcode": "38490"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "Margo",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        2
        ],
        "price_calendar": null,
        "subject": "Plats à crème brûlée blancs",
        "url": "https://www.leboncoin.fr/vi/855358407.htm"
        },
        {
        "ad_type": "offer",
        "attributes": [
        {
        "generic": true,
        "key": "clothing_type",
        "key_label": "Type",
        "value": "2",
        "value_label": "Femme enceinte"
        },
        {
        "generic": true,
        "key": "clothing_st",
        "key_label": "Taille",
        "value": "4",
        "value_label": "38"
        }
        ],
        "body": "Pull de la marque Colline.\\nMatière en viscose et coton très léger.",
        "category_id": "22",
        "category_name": "Vêtements",
        "expiration_date": "2018-07-24 22:33:56",
        "first_publication_date": "2018-05-25 22:33:56",
        "has_phone": true,
        "images": {
        "nb_images": 1,
        "small_url": "https://img0.leboncoin.fr/ad-small/9f6b4654c1c8c4cf9b5247696a9d74f79409d8ed.jpg",
        "thumb_url": "https://img0.leboncoin.fr/ad-thumb/9f6b4654c1c8c4cf9b5247696a9d74f79409d8ed.jpg",
        "urls": [
        "https://img0.leboncoin.fr/ad-image/9f6b4654c1c8c4cf9b5247696a9d74f79409d8ed.jpg"
        ],
        "urls_large": [
        "https://img0.leboncoin.fr/ad-large/9f6b4654c1c8c4cf9b5247696a9d74f79409d8ed.jpg"
        ],
        "urls_thumb": [
        "https://img0.leboncoin.fr/ad-thumb/9f6b4654c1c8c4cf9b5247696a9d74f79409d8ed.jpg"
        ]
        },
        "index_date": "2018-05-25 22:33:56",
        "list_id": 1438508788,
        "location": {
        "city": "Fontanil-Cornillon",
        "city_label": "Fontanil-Cornillon 38120",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": true,
        "lat": 45.25655,
        "lng": 5.66544,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "city",
        "zipcode": "38120"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "markko",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        4
        ],
        "price_calendar": null,
        "subject": "Pull de grossesse",
        "url": "https://www.leboncoin.fr/vi/1438508788.htm"
        },
        {
        "ad_type": "offer",
        "body": "tajine neuve en terre cuite",
        "category_id": "45",
        "category_name": "Arts de la table",
        "expiration_date": "2018-07-24 22:33:52",
        "first_publication_date": "2018-05-25 22:33:52",
        "has_phone": true,
        "images": {
        "nb_images": 1,
        "small_url": "https://img6.leboncoin.fr/ad-small/ac418be7a4764ce247ab551b8ec41a494486f25d.jpg",
        "thumb_url": "https://img6.leboncoin.fr/ad-thumb/ac418be7a4764ce247ab551b8ec41a494486f25d.jpg",
        "urls": [
        "https://img6.leboncoin.fr/ad-image/ac418be7a4764ce247ab551b8ec41a494486f25d.jpg"
        ],
        "urls_large": [
        "https://img6.leboncoin.fr/ad-large/ac418be7a4764ce247ab551b8ec41a494486f25d.jpg"
        ],
        "urls_thumb": [
        "https://img6.leboncoin.fr/ad-thumb/ac418be7a4764ce247ab551b8ec41a494486f25d.jpg"
        ]
        },
        "index_date": "2018-05-25 22:33:52",
        "list_id": 1438508771,
        "location": {
        "city": "Villefontaine",
        "city_label": "Villefontaine 38090",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": false,
        "lat": 45.61516,
        "lng": 5.14947,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "user",
        "zipcode": "38090"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "dominique juin",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        8
        ],
        "price_calendar": null,
        "subject": "Tajine",
        "url": "https://www.leboncoin.fr/vi/1438508771.htm"
        },
        {
        "ad_type": "offer",
        "body": "Train musical du zoo n°1 little people Fisher Price en très bon état\\n\\nIl fait de la musique en appuyant sur le chauffeur.",
        "category_id": "41",
        "category_name": "Jeux & Jouets",
        "expiration_date": "2018-07-24 22:33:40",
        "first_publication_date": "2018-05-25 22:33:40",
        "has_phone": true,
        "images": {
        "nb_images": 3,
        "small_url": "https://img3.leboncoin.fr/ad-small/e9263db6825a538e160df76ef283cd413fc523dc.jpg",
        "thumb_url": "https://img3.leboncoin.fr/ad-thumb/e9263db6825a538e160df76ef283cd413fc523dc.jpg",
        "urls": [
        "https://img3.leboncoin.fr/ad-image/e9263db6825a538e160df76ef283cd413fc523dc.jpg",
        "https://img2.leboncoin.fr/ad-image/fb477b50fe52e454ef99006f11bfa3d77069092b.jpg",
        "https://img3.leboncoin.fr/ad-image/ea7d445fe7629c0987d469ff965ede8b6e108533.jpg"
        ],
        "urls_large": [
        "https://img3.leboncoin.fr/ad-large/e9263db6825a538e160df76ef283cd413fc523dc.jpg",
        "https://img2.leboncoin.fr/ad-large/fb477b50fe52e454ef99006f11bfa3d77069092b.jpg",
        "https://img3.leboncoin.fr/ad-large/ea7d445fe7629c0987d469ff965ede8b6e108533.jpg"
        ],
        "urls_thumb": [
        "https://img3.leboncoin.fr/ad-thumb/e9263db6825a538e160df76ef283cd413fc523dc.jpg",
        "https://img2.leboncoin.fr/ad-thumb/fb477b50fe52e454ef99006f11bfa3d77069092b.jpg",
        "https://img3.leboncoin.fr/ad-thumb/ea7d445fe7629c0987d469ff965ede8b6e108533.jpg"
        ]
        },
        "index_date": "2018-05-25 22:33:40",
        "list_id": 1438508686,
        "location": {
        "city": "Faverges-de-la-Tour",
        "city_label": "Faverges-de-la-Tour 38110",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": true,
        "lat": 45.59115,
        "lng": 5.52362,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "city",
        "zipcode": "38110"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "Béatrice B",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        10
        ],
        "price_calendar": null,
        "subject": "Train musical Fisher Price",
        "url": "https://www.leboncoin.fr/vi/1438508686.htm"
        },
        {
        "ad_type": "offer",
        "body": "1 joli bac à glaçon Ricard,NEUF en carton.\\n\\nDisponibles  sur Chavanoz ou secteur de Lyon.\\n\\nEnvoi possible partout en France Métropolitaine, en Point Relais\\nRèglement : espèces, chèque, PayPal.\\n\\n« RIC22 »",
        "category_id": "45",
        "category_name": "Arts de la table",
        "expiration_date": "2018-07-24 22:33:22",
        "first_publication_date": "2018-05-25 22:33:22",
        "has_phone": true,
        "images": {
        "nb_images": 3,
        "small_url": "https://img2.leboncoin.fr/ad-small/d7524a205ac3a1420c95fc4e7637587c4e535725.jpg",
        "thumb_url": "https://img2.leboncoin.fr/ad-thumb/d7524a205ac3a1420c95fc4e7637587c4e535725.jpg",
        "urls": [
        "https://img2.leboncoin.fr/ad-image/d7524a205ac3a1420c95fc4e7637587c4e535725.jpg",
        "https://img3.leboncoin.fr/ad-image/8dbdbddad40b26f4200bc8291397f60d99fb661b.jpg",
        "https://img0.leboncoin.fr/ad-image/53dab95768a4400ce40fae98c3be5c37fa3a35d7.jpg"
        ],
        "urls_large": [
        "https://img2.leboncoin.fr/ad-large/d7524a205ac3a1420c95fc4e7637587c4e535725.jpg",
        "https://img3.leboncoin.fr/ad-large/8dbdbddad40b26f4200bc8291397f60d99fb661b.jpg",
        "https://img0.leboncoin.fr/ad-large/53dab95768a4400ce40fae98c3be5c37fa3a35d7.jpg"
        ],
        "urls_thumb": [
        "https://img2.leboncoin.fr/ad-thumb/d7524a205ac3a1420c95fc4e7637587c4e535725.jpg",
        "https://img3.leboncoin.fr/ad-thumb/8dbdbddad40b26f4200bc8291397f60d99fb661b.jpg",
        "https://img0.leboncoin.fr/ad-thumb/53dab95768a4400ce40fae98c3be5c37fa3a35d7.jpg"
        ]
        },
        "index_date": "2018-05-25 22:33:22",
        "list_id": 1438508620,
        "location": {
        "city": "Chavanoz",
        "city_label": "Chavanoz 38230",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": false,
        "lat": 45.7804,
        "lng": 5.16883,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "user",
        "zipcode": "38230"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "stéphane",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        20
        ],
        "price_calendar": null,
        "subject": "1 joli bac à glaçon Ricard, \"RIC22\"",
        "url": "https://www.leboncoin.fr/vi/1438508620.htm"
        },
        {
        "ad_type": "offer",
        "body": "Vends chaise de bureau spiderman quasi neuve ",
        "category_id": "19",
        "category_name": "Ameublement",
        "expiration_date": "2018-07-24 22:33:15",
        "first_publication_date": "2018-05-25 22:33:15",
        "has_phone": true,
        "images": {
        "nb_images": 1,
        "small_url": "https://img3.leboncoin.fr/ad-small/8423efcbc423a5cc19670435874bcc36991aec86.jpg",
        "thumb_url": "https://img3.leboncoin.fr/ad-thumb/8423efcbc423a5cc19670435874bcc36991aec86.jpg",
        "urls": [
        "https://img3.leboncoin.fr/ad-image/8423efcbc423a5cc19670435874bcc36991aec86.jpg"
        ],
        "urls_large": [
        "https://img3.leboncoin.fr/ad-large/8423efcbc423a5cc19670435874bcc36991aec86.jpg"
        ],
        "urls_thumb": [
        "https://img3.leboncoin.fr/ad-thumb/8423efcbc423a5cc19670435874bcc36991aec86.jpg"
        ]
        },
        "index_date": "2018-05-25 22:33:15",
        "list_id": 1438508578,
        "location": {
        "city": "Saint-Ismier",
        "city_label": "Saint-Ismier 38330",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": true,
        "lat": 45.24849,
        "lng": 5.82689,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "city",
        "zipcode": "38330"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "Moulin",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        25
        ],
        "price_calendar": null,
        "subject": "Chaise de bureau spiderman sur roulettes ",
        "url": "https://www.leboncoin.fr/vi/1438508578.htm"
        },
        {
        "ad_type": "offer",
        "attributes": [
        {
        "generic": true,
        "key": "brand",
        "key_label": "Marque",
        "value": "Nissan",
        "value_label": "Nissan"
        },
        {
        "generic": true,
        "key": "model",
        "key_label": "Modèle",
        "value": "Note",
        "value_label": "Note"
        },
        {
        "generic": true,
        "key": "regdate",
        "key_label": "Année-modèle",
        "value": "2011",
        "value_label": "2011"
        },
        {
        "generic": true,
        "key": "mileage",
        "key_label": "Kilométrage",
        "value": "43000",
        "value_label": "43000 km"
        },
        {
        "generic": true,
        "key": "fuel",
        "key_label": "Carburant",
        "value": "2",
        "value_label": "Diesel"
        },
        {
        "generic": true,
        "key": "gearbox",
        "key_label": "Boîte de vitesse",
        "value": "1",
        "value_label": "Manuelle"
        }
        ],
        "body": "Suite à doublon d’utilisation avec véhicule de fonction .\\nNous mettons en vente notre Nissan Note Phase 2 (E11E) 1.5 dCi DPF 90 cv monospace compact, gris foncé, 5 cv, 5 portes, mise en circulation le 23/11/2011\\n\\n5 places\\n\\nOPTIONS ET EQUIPEMENTS :\\nExtérieur :\\n- fermeture centralisée \\n-jante alu en 16 ( 2 pneus neuf et deux 5000km)\\n-vitre arrière teintée d’origine \\n-peinture métallisée \\n\\nIntérieur et confort :\\n- accoudoir central\\n- bluetooth\\n- climatisation automatique \\n- 4 vitres électriques \\n-radio cd/mp3 prise auxiliaire \\n-rétroviseur électrique \\n\\nSécurité :\\n- détecteur de pluie\\n- ABS\\n- phares antibrouillard\\n- fixation ISOFIX\\n- régulateur de vitesse\\n- limiteur de vitesse\\n-ESP\\n-roue de secours \\n\\nLe véhicule est en bon état le contrôle technique a été fait.\\nFrais récent :\\nDistribution décembre 2017\\nRévision tous les filtres \\n2 pneus arrière 185 55 16\\nClimatisation \\n\\nLe véhicule sort d’un nettoyage complet fait par un professionnel avec dégraissage complet des sièges .\\nDouble des clés ok \\nLe véhicule totalise 43000km pas évolutif car il ne roule plus nous venons d’acquérir un véhicule de fonction .\\nPrix 7000€\\n\\nPneus 185 55 16\\n\\nNote Phase 2 (E11E) 1.5 dCi DPF 90 cv monospace compact, gris foncé, 5 cv, 5 portes, mise en circulation le 23/11/2011\\n\\n5 places\\n\\nOPTIONS ET EQUIPEMENTS :\\nExtérieur :\\n- fermeture centralisée \\n-jante alu en 16 ( 2 pneus neuf et deux 5000km)\\n-vitre arrière teintée d’origine \\n-peinture métallisée \\n\\nIntérieur et confort :\\n- accoudoir central\\n- bluetooth\\n- climatisation automatique \\n- 4 vitres électriques \\n-radio cd/mp3 prise auxiliaire \\n-rétroviseur électrique \\n\\nSécurité :\\n- détecteur de pluie\\n- ABS\\n- phares antibrouillard\\n- fixation ISOFIX\\n- régulateur de vitesse\\n- limiteur de vitesse\\n-ESP\\n-roue de secours \\n\\nLe véhicule est en bon état le contrôle technique a été fait.\\nFrais récent :\\nDistribution décembre 2017\\nRévision tous les filtres \\n2 pneus arrière 185 55 16\\nClimatisation \\n\\nLe véhicule sort d’un nettoyage complet fait par un professionnel avec dégraissage complet des sièges .\\nDouble des clés ok \\nLe véhicule totalise 43000km pas évolutif car il ne roule plus nous venons d’acquérir un véhicule de fonction .\\nPrix 7000€",
        "category_id": "2",
        "category_name": "Voitures",
        "expiration_date": "2018-07-24 22:33:10",
        "first_publication_date": "2018-05-25 22:33:10",
        "has_phone": true,
        "images": {
        "nb_images": 3,
        "small_url": "https://img7.leboncoin.fr/ad-small/0317e0e946e98139f8b0ad7eebc6e1e83bef01dc.jpg",
        "thumb_url": "https://img7.leboncoin.fr/ad-thumb/0317e0e946e98139f8b0ad7eebc6e1e83bef01dc.jpg",
        "urls": [
        "https://img7.leboncoin.fr/ad-image/0317e0e946e98139f8b0ad7eebc6e1e83bef01dc.jpg",
        "https://img0.leboncoin.fr/ad-image/3e4e6363cae25c50ca5c31ef2db9dfae07067ff6.jpg",
        "https://img4.leboncoin.fr/ad-image/7efa644b0f04724385821911c239945bfdb058e0.jpg"
        ],
        "urls_large": [
        "https://img7.leboncoin.fr/ad-large/0317e0e946e98139f8b0ad7eebc6e1e83bef01dc.jpg",
        "https://img0.leboncoin.fr/ad-large/3e4e6363cae25c50ca5c31ef2db9dfae07067ff6.jpg",
        "https://img4.leboncoin.fr/ad-large/7efa644b0f04724385821911c239945bfdb058e0.jpg"
        ],
        "urls_thumb": [
        "https://img7.leboncoin.fr/ad-thumb/0317e0e946e98139f8b0ad7eebc6e1e83bef01dc.jpg",
        "https://img0.leboncoin.fr/ad-thumb/3e4e6363cae25c50ca5c31ef2db9dfae07067ff6.jpg",
        "https://img4.leboncoin.fr/ad-thumb/7efa644b0f04724385821911c239945bfdb058e0.jpg"
        ]
        },
        "index_date": "2018-05-25 22:33:10",
        "list_id": 1438508534,
        "location": {
        "city": "Champagnier",
        "city_label": "Champagnier 38800",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": true,
        "lat": 45.11182,
        "lng": 5.729,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "city",
        "zipcode": "38800"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "Yann",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        7000
        ],
        "price_calendar": null,
        "subject": "Nissan Note 2 DFP 90cv",
        "url": "https://www.leboncoin.fr/vi/1438508534.htm"
        },
        {
        "ad_type": "offer",
        "body": "A récupérer sur le centre ville de Grenoble",
        "category_id": "41",
        "category_name": "Jeux & Jouets",
        "expiration_date": "2018-07-24 22:32:45",
        "first_publication_date": "2018-05-25 22:32:45",
        "has_phone": true,
        "images": {
        "nb_images": 1,
        "small_url": "https://img2.leboncoin.fr/ad-small/5fc390d411c095aa5a8f86c9186a6ca105856d6c.jpg",
        "thumb_url": "https://img2.leboncoin.fr/ad-thumb/5fc390d411c095aa5a8f86c9186a6ca105856d6c.jpg",
        "urls": [
        "https://img2.leboncoin.fr/ad-image/5fc390d411c095aa5a8f86c9186a6ca105856d6c.jpg"
        ],
        "urls_large": [
        "https://img2.leboncoin.fr/ad-large/5fc390d411c095aa5a8f86c9186a6ca105856d6c.jpg"
        ],
        "urls_thumb": [
        "https://img2.leboncoin.fr/ad-thumb/5fc390d411c095aa5a8f86c9186a6ca105856d6c.jpg"
        ]
        },
        "index_date": "2018-05-25 22:32:45",
        "list_id": 1438508424,
        "location": {
        "city": "Grenoble",
        "city_label": "Grenoble 38000",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": false,
        "lat": 45.19153,
        "lng": 5.727769,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "user",
        "zipcode": "38000"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "jessy",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        10
        ],
        "price_calendar": null,
        "subject": "Voiture télécommandée",
        "url": "https://www.leboncoin.fr/vi/1438508424.htm"
        },
        {
        "ad_type": "offer",
        "body": "a vendre congélateur armoire 4 tiroirs + 1 abattant.\\nexcellent état encore garanti jusqu'au 28/06/2018.",
        "category_id": "20",
        "category_name": "Electroménager",
        "expiration_date": "2018-07-24 22:31:49",
        "first_publication_date": "2018-05-25 22:31:49",
        "has_phone": true,
        "images": {
        "nb_images": 3,
        "small_url": "https://img6.leboncoin.fr/ad-small/fe346b28c7ea38748be8a824a284de78c8074d07.jpg",
        "thumb_url": "https://img6.leboncoin.fr/ad-thumb/fe346b28c7ea38748be8a824a284de78c8074d07.jpg",
        "urls": [
        "https://img6.leboncoin.fr/ad-image/fe346b28c7ea38748be8a824a284de78c8074d07.jpg",
        "https://img5.leboncoin.fr/ad-image/cef99da447152113a3f3dcbf01559a258c44c448.jpg",
        "https://img6.leboncoin.fr/ad-image/66583f25f43b5248e3c907f1ba83d5492fc10041.jpg"
        ],
        "urls_large": [
        "https://img6.leboncoin.fr/ad-large/fe346b28c7ea38748be8a824a284de78c8074d07.jpg",
        "https://img5.leboncoin.fr/ad-large/cef99da447152113a3f3dcbf01559a258c44c448.jpg",
        "https://img6.leboncoin.fr/ad-large/66583f25f43b5248e3c907f1ba83d5492fc10041.jpg"
        ],
        "urls_thumb": [
        "https://img6.leboncoin.fr/ad-thumb/fe346b28c7ea38748be8a824a284de78c8074d07.jpg",
        "https://img5.leboncoin.fr/ad-thumb/cef99da447152113a3f3dcbf01559a258c44c448.jpg",
        "https://img6.leboncoin.fr/ad-thumb/66583f25f43b5248e3c907f1ba83d5492fc10041.jpg"
        ]
        },
        "index_date": "2018-05-25 22:31:49",
        "list_id": 1438508134,
        "location": {
        "city": "Tignieu-Jameyzieu",
        "city_label": "Tignieu-Jameyzieu 38230",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": false,
        "lat": 45.73698,
        "lng": 5.19255,
        "provider": "here",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "address",
        "zipcode": "38230"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "pascale",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        150
        ],
        "price_calendar": null,
        "subject": "Congélateur armoire",
        "url": "https://www.leboncoin.fr/vi/1438508134.htm"
        },
        {
        "ad_type": "offer",
        "attributes": [
        {
        "generic": true,
        "key": "animal_offer_nature",
        "key_label": "Nature de l'offre",
        "value": "1",
        "value_label": "Vente"
        },
        {
        "generic": true,
        "key": "animal_chips",
        "key_label": "Pucé",
        "value": "1",
        "value_label": "Oui"
        },
        {
        "generic": true,
        "key": "animal_race",
        "key_label": "Appartenance à une race",
        "value": "2",
        "value_label": "D'apparence/type/non LOF/non LOOF"
        },
        {
        "generic": true,
        "key": "animal_age",
        "key_label": "Âge",
        "value": "2",
        "value_label": "Moins de 8 semaines (à réserver)"
        },
        {
        "generic": true,
        "key": "animal_identification",
        "key_label": "Numéro d'identification",
        "value": "250268731548943",
        "value_label": "250268731548943"
        },
        {
        "generic": true,
        "key": "animal_litter",
        "key_label": "Nombre d'animaux dans la portée",
        "value": "4",
        "value_label": "4"
        }
        ],
        "body": "A  RESERVER\\nAdorables boules d'amour et de poils, maman Chihuahua et papa Spitz, alliant la beauté des deux races, leur caractère et leur beauté.\\nSi vous cherchez des chiots gentils, joueurs, beaux et câlins... Ce sont des chiots de compagnie, demandeurs de câlins, d'affection qui vous le rendront au centuple !\\nAdultes, ils font entre trois et cinq kilos . Nos chiots sont habitués aux chats, aux autres chiens et aux enfants.\\nNos chiots sont pucés ET  vaccinés, vermifugés et livrés avec un certificat de bonne santé.\\nIls sont à réserver et seront disponibles  le 16 juin.\\nNous les proposons à 760 euros, prix à débattre devant les chiots.\\nN'hésitez pas à appeler au 06 63 49 21 88.",
        "category_id": "28",
        "category_name": "Animaux",
        "expiration_date": "2018-07-24 22:31:43",
        "first_publication_date": "2018-05-25 22:31:43",
        "has_phone": true,
        "images": {
        "nb_images": 7,
        "small_url": "https://img4.leboncoin.fr/ad-small/25f054cdff81351dffa9f1b64b4304c41c7d8bca.jpg",
        "thumb_url": "https://img4.leboncoin.fr/ad-thumb/25f054cdff81351dffa9f1b64b4304c41c7d8bca.jpg",
        "urls": [
        "https://img4.leboncoin.fr/ad-image/25f054cdff81351dffa9f1b64b4304c41c7d8bca.jpg",
        "https://img6.leboncoin.fr/ad-image/94c1c8c0b6113e4aaff71c27507df14600e0f101.jpg",
        "https://img0.leboncoin.fr/ad-image/89d9ec7f606ad699d472bb95973fb1a40a427d79.jpg",
        "https://img7.leboncoin.fr/ad-image/e25a1ccf1cb55128a9c09534dbc28c8edbf0c206.jpg",
        "https://img1.leboncoin.fr/ad-image/7d5b5712d2f4f1328633bcde32da19ac0dca197b.jpg",
        "https://img4.leboncoin.fr/ad-image/5386bbb92007be7a43eba85356c05001b2965cc9.jpg",
        "https://img5.leboncoin.fr/ad-image/1b0d9694ac330096382e255daf94483ee9a9c37d.jpg"
        ],
        "urls_large": [
        "https://img4.leboncoin.fr/ad-large/25f054cdff81351dffa9f1b64b4304c41c7d8bca.jpg",
        "https://img6.leboncoin.fr/ad-large/94c1c8c0b6113e4aaff71c27507df14600e0f101.jpg",
        "https://img0.leboncoin.fr/ad-large/89d9ec7f606ad699d472bb95973fb1a40a427d79.jpg",
        "https://img7.leboncoin.fr/ad-large/e25a1ccf1cb55128a9c09534dbc28c8edbf0c206.jpg",
        "https://img1.leboncoin.fr/ad-large/7d5b5712d2f4f1328633bcde32da19ac0dca197b.jpg",
        "https://img4.leboncoin.fr/ad-large/5386bbb92007be7a43eba85356c05001b2965cc9.jpg",
        "https://img5.leboncoin.fr/ad-large/1b0d9694ac330096382e255daf94483ee9a9c37d.jpg"
        ],
        "urls_thumb": [
        "https://img4.leboncoin.fr/ad-thumb/25f054cdff81351dffa9f1b64b4304c41c7d8bca.jpg",
        "https://img6.leboncoin.fr/ad-thumb/94c1c8c0b6113e4aaff71c27507df14600e0f101.jpg",
        "https://img0.leboncoin.fr/ad-thumb/89d9ec7f606ad699d472bb95973fb1a40a427d79.jpg",
        "https://img7.leboncoin.fr/ad-thumb/e25a1ccf1cb55128a9c09534dbc28c8edbf0c206.jpg",
        "https://img1.leboncoin.fr/ad-thumb/7d5b5712d2f4f1328633bcde32da19ac0dca197b.jpg",
        "https://img4.leboncoin.fr/ad-thumb/5386bbb92007be7a43eba85356c05001b2965cc9.jpg",
        "https://img5.leboncoin.fr/ad-thumb/1b0d9694ac330096382e255daf94483ee9a9c37d.jpg"
        ]
        },
        "index_date": "2018-05-25 22:31:43",
        "list_id": 1438507695,
        "location": {
        "city": "La Verpillière",
        "city_label": "La Verpillière 38290",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": true,
        "lat": 45.63323,
        "lng": 5.14699,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "city",
        "zipcode": "38290"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": true,
        "photosup": true,
        "sub_toplist": true,
        "urgent": false
        },
        "owner": {
        "name": "Le chiot du bonheur",
        "no_salesmen": true,
        "type": "pro"
        },
        "price": [
        760
        ],
        "price_calendar": null,
        "subject": "Chiots type chihuahua / spitz",
        "url": "https://www.leboncoin.fr/vi/1438507695.htm"
        },
        {
        "ad_type": "offer",
        "body": "Vends iPod marque Apple quasi neuf peu utilisé idéal pour sportif ou transport se clipe sur les vêtements.",
        "category_id": "16",
        "category_name": "Image & Son",
        "expiration_date": "2018-07-24 22:31:40",
        "first_publication_date": "2018-05-25 22:31:40",
        "has_phone": true,
        "images": {
        "nb_images": 1,
        "small_url": "https://img0.leboncoin.fr/ad-small/36c32e5b97af7e0601dc3944bc5b5a2266d436a1.jpg",
        "thumb_url": "https://img0.leboncoin.fr/ad-thumb/36c32e5b97af7e0601dc3944bc5b5a2266d436a1.jpg",
        "urls": [
        "https://img0.leboncoin.fr/ad-image/36c32e5b97af7e0601dc3944bc5b5a2266d436a1.jpg"
        ],
        "urls_large": [
        "https://img0.leboncoin.fr/ad-large/36c32e5b97af7e0601dc3944bc5b5a2266d436a1.jpg"
        ],
        "urls_thumb": [
        "https://img0.leboncoin.fr/ad-thumb/36c32e5b97af7e0601dc3944bc5b5a2266d436a1.jpg"
        ]
        },
        "index_date": "2018-05-25 22:31:40",
        "list_id": 1438508099,
        "location": {
        "city": "Saint-Ismier",
        "city_label": "Saint-Ismier 38330",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": true,
        "lat": 45.24849,
        "lng": 5.82689,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "city",
        "zipcode": "38330"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "Moulin",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        40
        ],
        "price_calendar": null,
        "subject": "iPod Apple violet 2gb quasi neuf",
        "url": "https://www.leboncoin.fr/vi/1438508099.htm"
        },
        {
        "ad_type": "offer",
        "body": "le lot 15 euros\\n\\nA récupérer sur le centre ville de Grenoble",
        "category_id": "41",
        "category_name": "Jeux & Jouets",
        "expiration_date": "2018-07-24 22:31:39",
        "first_publication_date": "2018-05-25 22:31:39",
        "has_phone": true,
        "images": {
        "nb_images": 1,
        "small_url": "https://img7.leboncoin.fr/ad-small/4cd31b50eeb80c784306e33642cfc3cdd6c4fc98.jpg",
        "thumb_url": "https://img7.leboncoin.fr/ad-thumb/4cd31b50eeb80c784306e33642cfc3cdd6c4fc98.jpg",
        "urls": [
        "https://img7.leboncoin.fr/ad-image/4cd31b50eeb80c784306e33642cfc3cdd6c4fc98.jpg"
        ],
        "urls_large": [
        "https://img7.leboncoin.fr/ad-large/4cd31b50eeb80c784306e33642cfc3cdd6c4fc98.jpg"
        ],
        "urls_thumb": [
        "https://img7.leboncoin.fr/ad-thumb/4cd31b50eeb80c784306e33642cfc3cdd6c4fc98.jpg"
        ]
        },
        "index_date": "2018-05-25 22:31:39",
        "list_id": 1438508093,
        "location": {
        "city": "Grenoble",
        "city_label": "Grenoble 38000",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": false,
        "lat": 45.19153,
        "lng": 5.727769,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "user",
        "zipcode": "38000"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "jessy",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        15
        ],
        "price_calendar": null,
        "subject": "Lot petites voitures",
        "url": "https://www.leboncoin.fr/vi/1438508093.htm"
        },
        {
        "ad_type": "offer",
        "body": "Vends pneus rallye pirelli rk5 1neuf 160€ et 3 a environ 25% d usure a 100€ piece",
        "category_id": "6",
        "category_name": "Equipement Auto",
        "expiration_date": "2018-07-24 22:31:33",
        "first_publication_date": "2018-05-25 22:31:33",
        "has_phone": true,
        "images": {
        "nb_images": 1,
        "small_url": "https://img6.leboncoin.fr/ad-small/63010fd16343f561e415bc782180a712fae7f672.jpg",
        "thumb_url": "https://img6.leboncoin.fr/ad-thumb/63010fd16343f561e415bc782180a712fae7f672.jpg",
        "urls": [
        "https://img6.leboncoin.fr/ad-image/63010fd16343f561e415bc782180a712fae7f672.jpg"
        ],
        "urls_large": [
        "https://img6.leboncoin.fr/ad-large/63010fd16343f561e415bc782180a712fae7f672.jpg"
        ],
        "urls_thumb": [
        "https://img6.leboncoin.fr/ad-thumb/63010fd16343f561e415bc782180a712fae7f672.jpg"
        ]
        },
        "index_date": "2018-05-25 22:31:33",
        "list_id": 1438508062,
        "location": {
        "city": "Saint-Etienne-de-Saint-Geoirs",
        "city_label": "Saint-Etienne-de-Saint-Geoirs 38590",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": true,
        "lat": 45.33885,
        "lng": 5.34597,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "city",
        "zipcode": "38590"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "eric durand",
        "no_salesmen": true,
        "type": "private"
        },
        "price_calendar": null,
        "subject": "Pneus pirelli rallye 175/60r14",
        "url": "https://www.leboncoin.fr/vi/1438508062.htm"
        },
        {
        "ad_type": "offer",
        "attributes": [
        {
        "generic": true,
        "key": "charges_included",
        "key_label": "Charges comprises",
        "value": "1",
        "value_label": "Oui"
        },
        {
        "generic": true,
        "key": "real_estate_type",
        "key_label": "Type de bien",
        "value": "2",
        "value_label": "Appartement"
        },
        {
        "generic": true,
        "key": "rooms",
        "key_label": "Pièces",
        "value": "2",
        "value_label": "2"
        },
        {
        "generic": true,
        "key": "furnished",
        "key_label": "Meublé / Non meublé",
        "value": "2",
        "value_label": "Non meublé"
        },
        {
        "generic": true,
        "key": "square",
        "key_label": "Surface",
        "value": "50",
        "value_label": "50 m²"
        },
        {
        "generic": true,
        "key": "ges",
        "key_label": "GES",
        "value": "d",
        "value_label": "D (de 21 à 35)"
        },
        {
        "generic": true,
        "key": "energy_rate",
        "key_label": "Classe énergie",
        "value": "d",
        "value_label": "D (de 151 à 230)"
        }
        ],
        "body": "Particulier loue appartement de 2 p + c de 50 m2 au 6ème étage sur 10 dans résidence \"Route de Provence\" récemment ravalée.\\n\\nL'appartement est constitué de :\\n\\n- un hall d'entrée\\n- un salon/séjour de 18 m2, parquet, avec de grands placards de rangement\\n- une cuisine de 9,60 m2 avec évier émail, hotte et quelques éléments hauts et bas de rangement ( pas d'électroménager voir photo)\\n- une chambre de 10 m2 avec parquet\\n- une salle d'eau (baignoire, lavabo,WC) de 7m2\\n\\nL'appartement est calme et offre une vue dégagée sur la montagne de Saint Nizier.\\nIl a ainsi l'avantage de la proximité de nombreux commerces, des transports en commun aux pieds de la résidence, et des grands axes routiers sans les inconvénients puisqu'il donne côté montagne !\\n\\nL'immeuble calme et bien entretenu dispose d'un portail et d'interphone.\\n\\nle loyer mensuel est de 580 euros charges comprises dont\\n(65 euros pour les provisions des charges communes, le chauffage, la production d'eau chaude )\\nEst également compris dans le loyer une place de stationnement privative numérotée et une cave.\\n\\nL'appartement est en bon état et propre.\\nLa  copropriété est reliée par la fibre, le boîtier est déjà installé dans l'appartement.\\nPas de frais d'agence ni de frais d'entrée.\\n\\nNB : L'appartement n'est pas conventionné et n'ouvre pas de droit à l'APL mais éventuellement à l'AL en fonction des ressources.\\n\\nLIBRE DE SUITE\\n\\nPour tout renseignement ou rendez-vous pour le visiter,\\nmerci de téléphoner EXCLUSIVEMENT après 16heures en semaine ou le week end au \\n\\n06 86 46 95 01 \\n\\nAGENCE ET AUTRE PROFESSIONNEL MERCI DE VOUS ABSTENIR !",
        "category_id": "10",
        "category_name": "Locations",
        "expiration_date": "2018-07-24 22:31:33",
        "first_publication_date": "2018-05-25 22:31:33",
        "has_phone": true,
        "images": {
        "nb_images": 3,
        "small_url": "https://img5.leboncoin.fr/ad-small/87c575cb5e3856476039c774035249a127591a48.jpg",
        "thumb_url": "https://img5.leboncoin.fr/ad-thumb/87c575cb5e3856476039c774035249a127591a48.jpg",
        "urls": [
        "https://img5.leboncoin.fr/ad-image/87c575cb5e3856476039c774035249a127591a48.jpg",
        "https://img7.leboncoin.fr/ad-image/b1293f8d4762a03af75f92c20a8c8a07f58178b3.jpg",
        "https://img6.leboncoin.fr/ad-image/fdf1bc050a0aaf1bb20170d8b9e02d8909ec4cd1.jpg"
        ],
        "urls_large": [
        "https://img5.leboncoin.fr/ad-large/87c575cb5e3856476039c774035249a127591a48.jpg",
        "https://img7.leboncoin.fr/ad-large/b1293f8d4762a03af75f92c20a8c8a07f58178b3.jpg",
        "https://img6.leboncoin.fr/ad-large/fdf1bc050a0aaf1bb20170d8b9e02d8909ec4cd1.jpg"
        ],
        "urls_thumb": [
        "https://img5.leboncoin.fr/ad-thumb/87c575cb5e3856476039c774035249a127591a48.jpg",
        "https://img7.leboncoin.fr/ad-thumb/b1293f8d4762a03af75f92c20a8c8a07f58178b3.jpg",
        "https://img6.leboncoin.fr/ad-thumb/fdf1bc050a0aaf1bb20170d8b9e02d8909ec4cd1.jpg"
        ]
        },
        "index_date": "2018-05-25 22:31:33",
        "list_id": 1438508056,
        "location": {
        "city": "Le Pont-de-Claix",
        "city_label": "Le Pont-de-Claix 38800",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": false,
        "lat": 45.13468,
        "lng": 5.70083,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "user",
        "zipcode": "38800"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "I.ANDRE",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        585
        ],
        "price_calendar": null,
        "subject": "Pont de claix 2p+c 50 m2 585 € chauff coll inclus",
        "url": "https://www.leboncoin.fr/vi/1438508056.htm"
        },
        {
        "ad_type": "offer",
        "attributes": [
        {
        "generic": true,
        "key": "shoe_type",
        "key_label": "Type",
        "value": "3",
        "value_label": "Enfant"
        },
        {
        "generic": true,
        "key": "shoe_size",
        "key_label": "Pointure",
        "value": "20",
        "value_label": "35"
        }
        ],
        "body": "Chaussure de soirée portée juste le temps d'une soirée . La pointure est de 35 et demi .",
        "category_id": "53",
        "category_name": "Chaussures",
        "expiration_date": "2018-07-24 22:31:31",
        "first_publication_date": "2018-05-25 22:31:31",
        "has_phone": false,
        "images": {
        "nb_images": 3,
        "small_url": "https://img2.leboncoin.fr/ad-small/ec0f5dc3c166d5d606301765dbed71714be12ba7.jpg",
        "thumb_url": "https://img2.leboncoin.fr/ad-thumb/ec0f5dc3c166d5d606301765dbed71714be12ba7.jpg",
        "urls": [
        "https://img2.leboncoin.fr/ad-image/ec0f5dc3c166d5d606301765dbed71714be12ba7.jpg",
        "https://img3.leboncoin.fr/ad-image/2a4e9787f814715d2072f8b1cea4bd1a0bfdc132.jpg",
        "https://img6.leboncoin.fr/ad-image/49b1ed8ae0830d71942ea88b61e56485d82b722c.jpg"
        ],
        "urls_large": [
        "https://img2.leboncoin.fr/ad-large/ec0f5dc3c166d5d606301765dbed71714be12ba7.jpg",
        "https://img3.leboncoin.fr/ad-large/2a4e9787f814715d2072f8b1cea4bd1a0bfdc132.jpg",
        "https://img6.leboncoin.fr/ad-large/49b1ed8ae0830d71942ea88b61e56485d82b722c.jpg"
        ],
        "urls_thumb": [
        "https://img2.leboncoin.fr/ad-thumb/ec0f5dc3c166d5d606301765dbed71714be12ba7.jpg",
        "https://img3.leboncoin.fr/ad-thumb/2a4e9787f814715d2072f8b1cea4bd1a0bfdc132.jpg",
        "https://img6.leboncoin.fr/ad-thumb/49b1ed8ae0830d71942ea88b61e56485d82b722c.jpg"
        ]
        },
        "index_date": "2018-05-25 22:31:31",
        "list_id": 1438508053,
        "location": {
        "city": "Sassenage",
        "city_label": "Sassenage 38360",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": false,
        "lat": 45.205979,
        "lng": 5.66,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "user",
        "zipcode": "38360"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "Stéphanie",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        20
        ],
        "price_calendar": null,
        "subject": "Chaussure de soirée enfant",
        "url": "https://www.leboncoin.fr/vi/1438508053.htm"
        },
        {
        "ad_type": "offer",
        "attributes": [
        {
        "generic": true,
        "key": "brand",
        "key_label": "Marque",
        "value": "Renault",
        "value_label": "Renault"
        },
        {
        "generic": true,
        "key": "model",
        "key_label": "Modèle",
        "value": "Clio",
        "value_label": "Clio"
        },
        {
        "generic": true,
        "key": "regdate",
        "key_label": "Année-modèle",
        "value": "2003",
        "value_label": "2003"
        },
        {
        "generic": true,
        "key": "mileage",
        "key_label": "Kilométrage",
        "value": "220000",
        "value_label": "220000 km"
        },
        {
        "generic": true,
        "key": "fuel",
        "key_label": "Carburant",
        "value": "2",
        "value_label": "Diesel"
        },
        {
        "generic": true,
        "key": "gearbox",
        "key_label": "Boîte de vitesse",
        "value": "1",
        "value_label": "Manuelle"
        }
        ],
        "body": "Vend Clio dci 1 .5l diesel\\nCt ok fait en mars 2018\\nFactures certains travaux \\nClimatisation 4 cv très économique \\nVitre électrique \\nFermeture centralisée \\nCourroie distribution faite\\nPneu neuf ,propre Bn état général",
        "category_id": "2",
        "category_name": "Voitures",
        "expiration_date": "2018-06-21 22:26:37",
        "first_publication_date": "2018-04-22 22:26:37",
        "has_phone": true,
        "images": {
        "nb_images": 3,
        "small_url": "https://img1.leboncoin.fr/ad-small/4ccac5c39790182fe3780a9f2358bd98e50feac8.jpg",
        "thumb_url": "https://img1.leboncoin.fr/ad-thumb/4ccac5c39790182fe3780a9f2358bd98e50feac8.jpg",
        "urls": [
        "https://img1.leboncoin.fr/ad-image/4ccac5c39790182fe3780a9f2358bd98e50feac8.jpg",
        "https://img3.leboncoin.fr/ad-image/323e0eb6ef81c32bc343d08ca2135e6b6dced03f.jpg",
        "https://img3.leboncoin.fr/ad-image/f24ca6957581ca4e837cb6cd53046079075cdb2d.jpg"
        ],
        "urls_large": [
        "https://img1.leboncoin.fr/ad-large/4ccac5c39790182fe3780a9f2358bd98e50feac8.jpg",
        "https://img3.leboncoin.fr/ad-large/323e0eb6ef81c32bc343d08ca2135e6b6dced03f.jpg",
        "https://img3.leboncoin.fr/ad-large/f24ca6957581ca4e837cb6cd53046079075cdb2d.jpg"
        ],
        "urls_thumb": [
        "https://img1.leboncoin.fr/ad-thumb/4ccac5c39790182fe3780a9f2358bd98e50feac8.jpg",
        "https://img3.leboncoin.fr/ad-thumb/323e0eb6ef81c32bc343d08ca2135e6b6dced03f.jpg",
        "https://img3.leboncoin.fr/ad-thumb/f24ca6957581ca4e837cb6cd53046079075cdb2d.jpg"
        ]
        },
        "index_date": "2018-05-25 22:31:28",
        "list_id": 1420849404,
        "location": {
        "city": "Grenoble",
        "city_label": "Grenoble 38100",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": true,
        "lat": 45.17201,
        "lng": 5.72631,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "city",
        "zipcode": "38100"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "far",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        1590
        ],
        "price_calendar": null,
        "subject": "Clio dci ",
        "url": "https://www.leboncoin.fr/vi/1420849404.htm"
        },
        {
        "ad_type": "offer",
        "body": "Marque Pericles\\nHauteur: 90 cm, très confortable\\nSur 4 roulettes avec fonction frein\\n2 étages de rangement\\nTrès bon état \\nContacter uniquement par téléphone SVP",
        "category_id": "23",
        "category_name": "Equipement bébé",
        "expiration_date": "2018-07-24 22:31:11",
        "first_publication_date": "2018-05-25 22:31:11",
        "has_phone": true,
        "images": {
        "nb_images": 3,
        "small_url": "https://img0.leboncoin.fr/ad-small/677f0e8f0116ecb96725447c8207d149bb8694f3.jpg",
        "thumb_url": "https://img0.leboncoin.fr/ad-thumb/677f0e8f0116ecb96725447c8207d149bb8694f3.jpg",
        "urls": [
        "https://img0.leboncoin.fr/ad-image/677f0e8f0116ecb96725447c8207d149bb8694f3.jpg",
        "https://img5.leboncoin.fr/ad-image/8d4f5395cc54cc6c34319440a189c03b8847ac40.jpg",
        "https://img4.leboncoin.fr/ad-image/3ef8bf74b1db9aba93c106a994272ac17b9bddaa.jpg"
        ],
        "urls_large": [
        "https://img0.leboncoin.fr/ad-large/677f0e8f0116ecb96725447c8207d149bb8694f3.jpg",
        "https://img5.leboncoin.fr/ad-large/8d4f5395cc54cc6c34319440a189c03b8847ac40.jpg",
        "https://img4.leboncoin.fr/ad-large/3ef8bf74b1db9aba93c106a994272ac17b9bddaa.jpg"
        ],
        "urls_thumb": [
        "https://img0.leboncoin.fr/ad-thumb/677f0e8f0116ecb96725447c8207d149bb8694f3.jpg",
        "https://img5.leboncoin.fr/ad-thumb/8d4f5395cc54cc6c34319440a189c03b8847ac40.jpg",
        "https://img4.leboncoin.fr/ad-thumb/3ef8bf74b1db9aba93c106a994272ac17b9bddaa.jpg"
        ]
        },
        "index_date": "2018-05-25 22:31:11",
        "list_id": 1438507950,
        "location": {
        "city": "Meylan",
        "city_label": "Meylan 38240",
        "department_id": "38",
        "department_name": "Isère",
        "is_shape": true,
        "lat": 45.20932,
        "lng": 5.77846,
        "provider": "lbc",
        "region_id": "22",
        "region_name": "Rhône-Alpes",
        "source": "city",
        "zipcode": "38240"
        },
        "options": {
        "booster": false,
        "gallery": false,
        "has_option": false,
        "photosup": false,
        "sub_toplist": false,
        "urgent": false
        },
        "owner": {
        "name": "Jay38",
        "no_salesmen": true,
        "type": "private"
        },
        "price": [
        45
        ],
        "price_calendar": null,
        "subject": "Table à langer Pericles",
        "url": "https://www.leboncoin.fr/vi/1438507950.htm"
        }
        ],
        "total": 474825,
        "total_all": 474825,
        "total_pro": 43516,
        "total_private": 431309
        }
        """
    }
}
