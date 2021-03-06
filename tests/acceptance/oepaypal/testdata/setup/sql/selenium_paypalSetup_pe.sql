SET @@session.sql_mode = '';

# Articles demo data
INSERT INTO `oxarticles` (`OXID`, `OXSHOPID`, `OXACTIVE`, `OXARTNUM`, `OXTITLE`,        `OXSHORTDESC`,              `OXPRICE`, `OXUNITNAME`, `OXUNITQUANTITY`, `OXVAT`, `OXWEIGHT`, `OXSTOCK`, `OXSTOCKFLAG`, `OXINSERT`,   `OXTIMESTAMP`,        `OXLENGTH`, `OXWIDTH`, `OXHEIGHT`, `OXSEARCHKEYS`, `OXISSEARCH`, `OXVARMINPRICE`, `OXTITLE_1`,      `OXSHORTDESC_1`,             `OXSUBCLASS`) VALUES
                         ('1000',  'oxbaseshop',          1,         '1000',     'Test product 0', 'Test product 0 short desc', 10,        'kg',          2,                NULL,    24,         15,        1,            '2008-02-04', '2008-02-04 17:07:29', 1,          2,         2,         'search1000',    1,            50,             'Test product 0', 'Test product 0 short desc', 'oxarticle'),
                         ('1001',  'oxbaseshop',          1,         '1001',     'Test product 1', 'Test product 1 short desc', 0.99,      '',            0,                NULL,    0,          0,         1,            '2008-02-04', '2008-02-04 17:35:43', 0,          0,         0,         'search1001',    1,            100,            'Test product 1', 'Test product 1 short desc', 'oxarticle'),
                         ('1003',  'oxbaseshop',          1,         '1003',     'Test product 3', 'Test product 3 short desc', 15,        'kg',          2,                NULL,    24,         15,        1,            '2008-02-04', '2008-02-04 17:07:29', 1,          2,         2,         'search1003',    1,            50,             'Test product 3', 'Test product 0 short desc', 'oxarticle'),
                         ('1004',  'oxbaseshop',          1,         '1004',     'Test product 4', 'Test product 4 short desc', 15,        'kg',          2,                NULL,    24,         15,        1,            '2008-02-04', '2008-02-04 17:07:29', 1,          2,         2,         'search1004',    1,            50,             'Test product 4', 'Test product 4 short desc', 'oxarticle');


# Articles long desc
INSERT INTO `oxartextends` (`OXID`, `OXLONGDESC`,                             `OXLONGDESC_1`) VALUES
                           ('1000', '<p>Test product 0 long description</p>', '<p>Test product 0 long description</p>'),
                           ('1001', '<p>Test product 1 long description</p>', '<p>Test product 1 long description</p>');

# Categories demo data
INSERT INTO `oxcategories` (`OXID`,          `OXPARENTID`, `OXLEFT`, `OXRIGHT`, `OXROOTID`,     `OXSORT`, `OXACTIVE`, `OXHIDDEN`, `OXSHOPID`,    `OXTITLE`,         `OXDESC`,               `OXLONGDESC`,                  `OXDEFSORT`, `OXDEFSORTMODE`, `OXACTIVE_1`, `OXTITLE_1`,       `OXDESC_1`,             `OXLONGDESC_1`,                `OXVAT`, `OXSKIPDISCOUNTS`, `OXSHOWSUFFIX`) VALUES
                           ('testcategory0', 'oxrootid',    1,        4,        'testcategory0', 1,        1,          0,          'oxbaseshop', 'Test category 0', 'Test category 0 desc', '<p>Category 0 long desc</p>', 'oxartnum',   0,               1,           'Test category 0', 'Test category 0 desc', '<p>Category 0 long desc</p>',  NULL,    0,                 1);

# Payment demo data
INSERT INTO `oxpayments` (`OXID`,       `OXACTIVE`, `OXDESC`,             `OXADDSUM`, `OXADDSUMTYPE`, `OXFROMBONI`, `OXFROMAMOUNT`, `OXTOAMOUNT`, `OXCHECKED`, `OXDESC_1`,            `OXLONGDESC`,                `OXLONGDESC_1`,             `OXSORT`) VALUES
                         ('testpayment', 1,         'Test payment method', 0,         'abs',           0,            0,              99999,        0,          'Test payment method', 'Short payment description', 'Short payment description', 0);

# Delivery set demo data
INSERT INTO `oxdeliveryset` (`OXID`,      `OXSHOPID`, `OXACTIVE`, `OXTITLE`,      `OXTITLE_1`,   `OXPOS`) VALUES
                            ('testdelset', 'oxbaseshop',          1,         'Test S&H set', 'Test S&H set', 0);

# Delivery demo data
INSERT INTO `oxdelivery` (`OXID`,   `OXSHOPID`, `OXACTIVE`, `OXTITLE`,       `OXTITLE_1`,     `OXADDSUMTYPE`, `OXADDSUM`, `OXDELTYPE`, `OXPARAM`, `OXPARAMEND`, `OXFIXED`, `OXSORT`, `OXFINALIZE`) VALUES
                         ('testdel', 'oxbaseshop',          1,         'Test delivery', 'Test delivery', 'abs',           0,         'a',          1,         99999,        0,         9998,     1);

# User demo data
INSERT INTO `oxuser` (`OXID`,     `OXACTIVE`, `OXRIGHTS`, `OXSHOPID`,    `OXUSERNAME`,         `OXPASSWORD`,                       `OXPASSSALT`,        `OXCUSTNR`, `OXUSTID`, `OXCOMPANY`,             `OXFNAME`,                 `OXLNAME`,      `OXSTREET`,         `OXSTREETNR`, `OXADDINFO`,                `OXCITY`,            `OXCOUNTRYID`,                `OXZIP`, `OXFON`, `OXFAX`, `OXSAL`, `OXBONI`, `OXCREATE`,            `OXREGISTER`,          `OXPRIVFON`, `OXMOBFON`, `OXBIRTHDATE`, `OXURL`, `OXUPDATEKEY`, `OXUPDATEEXP`) VALUES
                     ('testuser',  1,         'user',      'oxbaseshop', 'testing_account@oxid-esales.com', 'c9dadd994241c9e5fa6469547009328a', '7573657275736572',   8,         '',        'SeleniumTestCase Äß\'ü', 'Testing user acc Äß\'ü', 'PayPal Äß\'ü', 'Musterstr. Äß\'ü', '1',          'Testing acc for Selenium', 'Musterstadt Äß\'ü', 'a7c40f631fc920687.20179984', '79098', '',      '',      'MR',    500,      '2008-02-05 14:42:42', '2008-02-05 14:42:42', '',          '',         '0000-00-00',  '',      '',            0),
                     ('testusera', 1,         'user',      'oxbaseshop', 'testing_account2@oxid-esales.com',    'a233c8b71a465807980f4b2b18f50fec', '757365724175736572', 9,         '',        'SeleniumTestCase',       'Testing user acc',       'PayPal',     'Musterstr.',       '2',          'Testing acc for Selenium', 'Musterstadt',       'a7c40f631fc920687.20179984', '79098', '',      '',      'MRS',   500,      '2008-02-05 14:49:31', '2008-02-05 14:49:31', '',          '',         '0000-00-00',  '',    '',            0);

# Delivery2DeliverySet
INSERT INTO `oxdel2delset` (`OXID`,                       `OXDELID`, `OXDELSETID`) VALUES
                           ('15947a84ade6246c1.43630378', 'testdel', 'testdelset');
# article2category
INSERT INTO `oxobject2category` (`OXID`,                      `OXOBJECTID`, `OXCATNID`,     `OXPOS`, `OXTIME`) VALUES
                                ('96047a71f4d4e34d9.76958590', '1000',       'testcategory0', 0,       1202134861),
                                ('96047a72713424e14.02408995', '1001',       'testcategory0', 0,       1202136851);

# object2delivery
INSERT INTO `oxobject2delivery` (`OXID`,                       `OXDELIVERYID`, `OXOBJECTID`,                 `OXTYPE`) VALUES
                                ('15947a8495c225b22.01517980', 'testdel',      'a7c40f631fc920687.20179984', 'oxcountry'),
                                ('15947a84b002905d3.97006730', 'testdelset',   'a7c40f631fc920687.20179984', 'oxdelset');

# object2group
INSERT INTO `oxobject2group` (`OXID`,                      `OXSHOPID`, `OXOBJECTID`,  `OXGROUPSID`) VALUES
                             ('96047a71c6f049988.94873501', 'oxbaseshop',         'testpayment', 'oxidnewcustomer'),
                             ('15947a85a7ce23451.42160470', 'oxbaseshop',         'testuser',    'oxidnewcustomer'),
                             ('15947a861e1dc7461.03139047', 'oxbaseshop',         'testusera',   'oxidnewcustomer');

# object2payment
INSERT INTO `oxobject2payment` (`OXID`,                       `OXPAYMENTID`,    `OXOBJECTID`,                 `OXTYPE`) VALUES
                               ('bde47a8223ddc3572.12628821', 'testpayment',    'a7c40f631fc920687.20179984', 'oxcountry'),
                               ('15947a84af5c69698.88858631', 'testpayment',    'testdelset',                 'oxdelset'),
                               ('15947a84af8e08906.22057468', 'oxidcreditcard', 'testdelset',                 'oxdelset'),
                               ('15947a84af8e151b6.25811193', 'oxidcashondel',  'testdelset',                 'oxdelset');
# more active countries
UPDATE `oxcountry` SET `OXACTIVE` = 1 WHERE `OXTITLE_1` = 'Germany';
UPDATE `oxcountry` SET `OXACTIVE` = 1 WHERE `OXTITLE_1` = 'Austria';
UPDATE `oxcountry` SET `OXACTIVE` = 1 WHERE `OXTITLE_1` = 'Switzerland';
UPDATE `oxcountry` SET `OXACTIVE` = 1 WHERE `OXTITLE_1` = 'Liechtenstein';

#updating oxConfig settings
UPDATE `oxconfig` SET `OXVARVALUE` = 0x93ea1218   WHERE `OXVARNAME` = 'bl_perfLoadSelectLists'         AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0x93ea1218   WHERE `OXVARNAME` = 'bl_perfShowLeftBasket'          AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0x93ea1218   WHERE `OXVARNAME` = 'bl_perfShowRightBasket'         AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0x93ea1218   WHERE `OXVARNAME` = 'bl_perfUseSelectlistPrice'      AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0x93ea1218   WHERE `OXVARNAME` = 'bl_perfLoadSelectListsInAList'  AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0x7900fdf51e WHERE `OXVARNAME` = 'blShowVATForDelivery'           AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0x7900fdf51e WHERE `OXVARNAME` = 'blCalcSkontoForDelivery'        AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0x7900fdf51e WHERE `OXVARNAME` = 'blShowVATForPayCharge'          AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0x7900fdf51e WHERE `OXVARNAME` = 'bl_perfShowActionCatArticleCnt' AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0x93ea1218   WHERE `OXVARNAME` = 'blOtherCountryOrder'            AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0x7900fdf51e WHERE `OXVARNAME` = 'blCheckTemplates'               AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0x93ea1218   WHERE `OXVARNAME` = 'blDisableNavBars'               AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0x93ea1218   WHERE `OXVARNAME` = 'blAllowUnevenAmounts'           AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = ''           WHERE `OXVARNAME` = 'blTopNaviLayout'                AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0xde         WHERE `OXVARNAME` = 'iNewBasketItemMessage'          AND `OXSHOPID` = 1;
UPDATE `oxconfig` SET `OXVARVALUE` = 0xb0         WHERE `OXVARNAME` = 'iTopNaviCatCount'               AND `OXSHOPID` = 1 AND `OXMODULE` = 'theme:azure';
UPDATE `oxconfig` SET `OXVARVALUE` = 0xb0         WHERE `OXVARNAME` = 'iTopNaviCatCount'               AND `OXSHOPID` = 1 AND `OXMODULE` = 'theme:azure';

INSERT INTO `oxconfig` (`OXID`,                      `OXSHOPID`,    `OXVARNAME`,               `OXVARTYPE`, `OXVARVALUE`) VALUES
                       ('a0147ac17160e6556.25324407', 'oxbaseshop', 'blAllowNegativeStock',    'bool',       0x7900fdf51e),
                       ('a0147ac17160fb173.47699884', 'oxbaseshop', 'blOverrideZeroABCPrices', 'bool',       0x7900fdf51e),
                       ('a0147ac1716156ce5.75228443', 'oxbaseshop', 'blBidirectCross',         'bool',       0x7900fdf51e),
                       ('a0147ac1781cb8160.56740074', 'oxbaseshop', 'blDisableNavBars',        'bool',       0x93ea1218),
                       ('33bd5512d7d7366681eb850502', 'oxbaseshop', 'blOverrideZeroABCPrices', 'bool',       0x93ea1218),
                       ('01d42bbeced070f0aef7aebff4', 'oxbaseshop', 'blUseContentCaching',     'bool',       0x93ea1218),
                       ('00fc37d94581704c4ac5a2803d', 'oxbaseshop', 'blMallUsers',             'bool',       0x93ea1218);
UPDATE `oxconfig` SET `OXVARVALUE` = 0x4dbace29724a51b6af7d09aac117301142e91c3c5b7eed9a850f85c1e3d58739aa9ea92523f05320a95060d60d57fbb027bad88efdaa0b928ebcd6aacf58084d31dd6ed5e718b833f1079b3805d28203f284492955c82cea3405879ea7588ec610ccde56acede495 WHERE `OXVARNAME` = 'aInterfaceProfiles';
UPDATE `oxconfig` SET `OXVARVALUE` = 0x4dba222b70e349f0c9d1aba6133981af1e8d79724d7309a19dd3eed099418943829510e114c4f6ffcb2543f5856ec4fea325d58b96e406decb977395c57d7cc79eec7f9f8dd6e30e2f68d198bd9d079dbe8b4f WHERE `OXVARNAME` = 'aNrofCatArticles';
UPDATE `oxconfig` SET `OXVARVALUE` = 0x4dba422a71e248f1c8d0aa1651570011febb9efc98177f036b0a6020a634f31d0bd0c20d9eb4818881fc066e5334236637f87dffd86e5583f7e63e579da1b5d11a7990967a63fe149e97097b5bcf3b2fb5cb5c19ef40b566b2d429e74af7223fd7c0b7a349a3dfcf42978929ba59931a4f2bff23326b91c5c9e0638593db43262e66202998b8c5e9a73b9ead14370a7528ef08393dbd998a6fc9322a21ab682a0f387784fcfe05f555b302f7f2e0d83380f551dd97040e99bbed30d37a3355dc28 WHERE `OXVARNAME` = 'aRssSelected';

#updating smtp and emails data
UPDATE `oxshops` SET `OXINFOEMAIL` = 'testing_account@oxid-esales.com', `OXORDEREMAIL` = 'testing_account@oxid-esales.com', `OXOWNEREMAIL` = 'testing_account@oxid-esales.com', `OXSMTP` = 'localhost', `OXDEFCAT` = '' WHERE `OXID` = 'oxbaseshop';


#paypal demodata
INSERT INTO `oxpayments`
(`OXID`, `OXACTIVE`, `OXDESC`, `OXADDSUM`, `OXADDSUMTYPE`, `OXFROMBONI`, `OXFROMAMOUNT`, `OXTOAMOUNT`, `OXVALDESC`, `OXCHECKED`, `OXDESC_1`, `OXVALDESC_1`, `OXDESC_2`, `OXVALDESC_2`, `OXDESC_3`, `OXVALDESC_3`, `OXLONGDESC`, `OXLONGDESC_1`, `OXLONGDESC_2`, `OXLONGDESC_3`, `OXSORT`)
VALUES
('oxidpaypal', 1, 'PayPal', 0, 'abs', 0, 0, 99999, '', 0, 'PayPal', '', '', '', '', '', '<div>Bei Auswahl der Zahlungsart PayPal werden Sie im nächsten Schritt zu PayPal weitergeleitet. Dort können Sie sich in Ihr PayPal-Konto einloggen oder ein neues PayPal-Konto eröffnen und die Zahlung autorisieren. Sobald Sie Ihre Daten für die Zahlung bestätigt haben, werden Sie automatisch wieder zurück in den Shop geleitet, um die Bestellung abzuschließen.</div>
<div style="margin-top: 5px">Erst dann wird die Zahlung ausgeführt.</div>', '<div>When selecting this payment method you are being redirected to PayPal where you can login into your account or open a new account. In PayPal you are able to authorize the payment. As soon you have authorized the payment, you are again redirected to our shop where you can confirm your order.</div>
<div style="margin-top: 5px">Only after confirming the order, transfer of money takes place.</div>', '', '', 0);

CREATE TABLE IF NOT EXISTS `oepaypal_transactions` (
    `oepaypal_id` int(11) NOT NULL auto_increment,
    `oepaypal_transactiondata` text collate latin1_general_ci NOT NULL,
    PRIMARY KEY (`oepaypal_id`))
ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE IF NOT EXISTS `efi_paypal_cfg` ( `id` INT( 11 ) NOT NULL AUTO_INCREMENT PRIMARY KEY , `paypal_1` VARCHAR( 255 ) NOT NULL , `paypal_2` VARCHAR( 255 ) NOT NULL , `paypal_3` VARCHAR( 255 ) NOT NULL , `paypal_4` VARCHAR( 255 ) NOT NULL , `paypal_5` VARCHAR( 255 ) NOT NULL , `paypal_6` VARCHAR( 255 ) NOT NULL ) ENGINE = MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `oxobject2payment` (`OXID`, `OXPAYMENTID`, `OXOBJECTID`, `OXTYPE`) VALUES ('6604d679fpaypal11518196d95f45fd3', 'oxidpaypal', 'a7c40f631fc920687.20179984', 'oxcountry');
INSERT INTO `oxobject2payment` (`OXID`, `OXPAYMENTID`, `OXOBJECTID`, `OXTYPE`) VALUES ('660b8f058paypal6ada9ee7586d946ef', 'oxidpaypal', 'a7c40f6320aeb2ec2.72885259', 'oxcountry');
INSERT INTO `oxobject2payment` (`OXID`, `OXPAYMENTID`, `OXOBJECTID`, `OXTYPE`) VALUES ('66024d636paypalbb5638b1e80a4e62c', 'oxidpaypal', 'a7c40f6321c6f6109.43859248', 'oxcountry');
INSERT INTO `oxobject2payment` (`OXID`, `OXPAYMENTID`, `OXOBJECTID`, `OXTYPE`) VALUES ('660f0f63epaypald63a78af0a4b7d44f', 'oxidpaypal', 'testdelset',                 'oxdelset');
INSERT INTO `oxobject2payment` (`OXID`, `OXPAYMENTID`, `OXOBJECTID`, `OXTYPE`) VALUES ('26586trf09oiu927b50ed832f76feed4', 'oxidpaypal', '1b842e732a23255b1.91207750', 'oxdelset');
UPDATE `oxdelivery` SET `OXADDSUM` = '0' WHERE `OXTITLE` = 'Versandkosten für Beispiel Set1: UPS 48 Std.: 9,90.-';
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('9c463cpaypal0ea6fc4d659ce444e697', 'oxbaseshop', 'oxidpaypal', 'oxidforeigncustomer');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('9c4cc2paypal4ee57047656d8d3be15o', 'oxbaseshop', 'oxidpaypal', 'oxidsmallcust');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('9c4712paypalc96fa79b4e205c4e94f8', 'oxbaseshop', 'oxidpaypal', 'oxidgoodcust');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('9c4b36paypal4bbea41ecda871e33590', 'oxbaseshop', 'oxidpaypal', 'oxiddealer');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('9c40ccpaypal086c42ae2e7c7e3ad4ae', 'oxbaseshop', 'oxidpaypal', 'oxidnewcustomer');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('9c47capaypalfa475e0c6da4fb9d59f9', 'oxbaseshop', 'oxidpaypal', 'oxidcustomer');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('9c40e3paypal8e5c9169dd21851947bb', 'oxbaseshop', 'oxidpaypal', 'oxidmiddlecust');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('9c4a95paypald75bf18f96bb04352720', 'oxbaseshop', 'oxidpaypal', 'oxidnotyetordered');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('9c4eb4paypal6cae937f7f7d781d54bb', 'oxbaseshop', 'oxidpaypal', 'oxidadmin');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('cdbeadpaypal295e83ca0a8ac74942a1', 'oxbaseshop', 'oxidpaypal', 'oxidblacklist');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('cdb817paypal4f300982c440d6bff476', 'oxbaseshop', 'oxidpaypal', 'oxidblocked');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('cdb7b8paypal00b89b4debfb8f90c54b', 'oxbaseshop', 'oxidpaypal', 'oxidnewsletter');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('cdb8fbpaypal65b73a73edd935eac4d9', 'oxbaseshop', 'oxidpaypal', 'oxidpowershopper');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('cdbd1dpaypal7ab6a247dc8f5bab3932', 'oxbaseshop', 'oxidpaypal', 'oxidpricea');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('cdbe0epaypalbbef45ec71bcbd6f41ae', 'oxbaseshop', 'oxidpaypal', 'oxidpriceb');
INSERT INTO `oxobject2group` (`OXID`, `OXSHOPID`, `OXOBJECTID`, `OXGROUPSID`) VALUES ('cdbfe1paypalc65e3a0e54c2eb83b7ec', 'oxbaseshop', 'oxidpaypal', 'oxidpricec');
